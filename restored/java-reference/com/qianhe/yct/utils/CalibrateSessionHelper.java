package com.qianhe.yct.utils;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.qh.libexcavator.Excavator;
import com.qh.libexcavator.GeoQuaternion;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CalibrateSessionHelper {
    private static final Object AWAIT_SET_PARAM_LOCK = new Object();
    private static boolean awaitSetParamReply;
    private static JsonObject pendingEndMeta;

    public static String resolveFileFlow(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null || excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            return "mode1";
        }
        if (excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
            return "mode3";
        }
        if (excavatorEntity.mode != ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            return "mode1";
        }
        if (excavatorEntity.isDistanceBucketMeasureFlow()) {
            return "mode2_1";
        }
        return "mode2_0";
    }

    public static String deviceSn(Context context) {
        String string;
        return (context == null || (string = context.getSharedPreferences("sp", 0).getString("deviceSn", "")) == null) ? "" : string;
    }

    public static void beginForExcavator(Context context, ExcavatorEntity excavatorEntity, String str) {
        beginForExcavator(context, excavatorEntity, str, ((context instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) context).isReplaceBucketMode()) ? "bucket" : null);
    }

    public static void beginForExcavator(Context context, ExcavatorEntity excavatorEntity, String str, String str2) {
        String str3;
        if (CalibrateLogToFile.hasActiveSession()) {
            return;
        }
        ensureXexcavatorVersion();
        if (TextUtils.isEmpty(str2)) {
            str2 = resolveFileFlow(excavatorEntity);
        }
        String str4 = str2;
        long j = excavatorEntity != null ? excavatorEntity.calibrateId : 0L;
        if (excavatorEntity == null || (str3 = excavatorEntity.name) == null) {
            str3 = "";
        }
        String str5 = str3;
        if ("bucket".equals(str4)) {
            CalibrateLogToFile.beginSession(str4, "reuse_create", j, str5, deviceSn(context), str);
        } else {
            CalibrateLogToFile.beginSession(str4, j, str5, deviceSn(context), str);
        }
    }

    public static void beginReplaceBucket(Context context, ExcavatorEntity excavatorEntity) {
        CalibrateLogToFile.discardSession();
        clearAwaitSetParamReply();
        beginForExcavator(context, excavatorEntity, "local", "bucket");
    }

    public static void beginFreshForExcavator(Context context, ExcavatorEntity excavatorEntity, String str) {
        CalibrateLogToFile.discardSession();
        clearAwaitSetParamReply();
        beginForExcavator(context, excavatorEntity, str);
    }

    public static void beginVerify(Context context, ExcavatorEntity excavatorEntity, String str) {
        String str2;
        if (CalibrateLogToFile.hasActiveSession()) {
            if (TextUtils.isEmpty(str) || !"verify".equals(CalibrateLogToFile.getActiveFileFlow())) {
                return;
            }
            CalibrateLogToFile.updateSessionType(str);
            return;
        }
        ensureXexcavatorVersion();
        long j = excavatorEntity != null ? excavatorEntity.calibrateId : 0L;
        if (excavatorEntity == null || (str2 = excavatorEntity.name) == null) {
            str2 = "";
        }
        CalibrateLogToFile.beginSession("verify", "verify", str, j, str2, deviceSn(context), "device");
    }

    public static void beginFinetune(Context context, ExcavatorEntity excavatorEntity) {
        beginFinetune(context, excavatorEntity, "finetune_five_point");
    }

    public static void beginFinetune(Context context, ExcavatorEntity excavatorEntity, String str) {
        if (CalibrateLogToFile.hasActiveSession()) {
            return;
        }
        ensureXexcavatorVersion();
        String str2 = "";
        long j = 0;
        if (excavatorEntity != null) {
            long j2 = excavatorEntity.localId;
            j = j2 > 0 ? j2 : excavatorEntity.calibrateId;
            String str3 = excavatorEntity.name;
            if (str3 != null) {
                str2 = str3;
            }
        }
        String str4 = str2;
        long j3 = j;
        if (TextUtils.isEmpty(str)) {
            str = "finetune_five_point";
        }
        CalibrateLogToFile.beginSession("finetune", str, j3, str4, deviceSn(context), "local");
    }

    public static void beginBucketSwitch(Context context, ExcavatorEntity excavatorEntity) {
        if (CalibrateLogToFile.hasActiveSession()) {
            return;
        }
        ensureXexcavatorVersion();
        long j = 0;
        if (excavatorEntity != null) {
            long j2 = excavatorEntity.localId;
            j = j2 > 0 ? j2 : excavatorEntity.calibrateId;
        }
        CalibrateLogToFile.beginSession("bucket", j, "", deviceSn(context), "local");
    }

    private static void ensureXexcavatorVersion() {
        if (TextUtils.isEmpty(CalibrateLogToFile.getXexcavatorVersion())) {
            try {
                CalibrateLogToFile.setXexcavatorVersion(Excavator.libraryVersion());
            } catch (Throwable unused) {
            }
        }
    }

    public static JsonObject buildCommonData(GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, boolean z) {
        return buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d, z, null);
    }

    public static JsonObject buildCommonData(GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, boolean z, InsNavi insNavi2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("gga", buildGga(gGAEntity));
        JsonObject jsonObjectBuildBody = buildBody(insNavi);
        if (d == null) {
            jsonObjectBuildBody.addProperty("y_err", (Number) 0);
        } else {
            jsonObjectBuildBody.addProperty("y_err", d);
        }
        jsonObject.add("device", jsonObjectBuildBody);
        jsonObject.add("sensor", buildSensor(sensorInfoEvent));
        if (insNavi2 != null) {
            insNavi = insNavi2;
        }
        if (z && insNavi != null) {
            jsonObject.add("teeth", buildTeeth(insNavi));
        }
        return jsonObject;
    }

    public static JsonObject buildGga(GGAEntity gGAEntity) {
        JsonObject jsonObject = new JsonObject();
        if (gGAEntity == null) {
            jsonObject.addProperty("lat", "0");
            jsonObject.addProperty("lon", "0");
            jsonObject.addProperty("hgt", (Number) 0);
            jsonObject.addProperty("q", (Number) 0);
            jsonObject.addProperty("sats", (Number) 0);
            jsonObject.addProperty("hdop", (Number) 0);
            jsonObject.addProperty("age", (Number) 0);
            return jsonObject;
        }
        jsonObject.addProperty("lat", formatLatLon(gGAEntity.latitude));
        jsonObject.addProperty("lon", formatLatLon(gGAEntity.longitude));
        jsonObject.addProperty("hgt", Double.valueOf(gGAEntity.elevation));
        jsonObject.addProperty("q", Integer.valueOf(gGAEntity.quality));
        jsonObject.addProperty("sats", Integer.valueOf(gGAEntity.useStarNum));
        jsonObject.addProperty("hdop", Double.valueOf(gGAEntity.hdop));
        jsonObject.addProperty("age", Float.valueOf(gGAEntity.age));
        return jsonObject;
    }

    public static JsonObject buildBody(InsNavi insNavi) {
        if (insNavi == null) {
            return buildRpy(0.0d, 0.0d, 0.0d, false);
        }
        return buildRpy(insNavi.rollDegrees, insNavi.pitchDegrees, insNavi.headingDegrees, false);
    }

    public static JsonObject buildSensor(SensorInfoEvent sensorInfoEvent) {
        if (sensorInfoEvent == null) {
            return buildRpy(0.0d, 0.0d, 0.0d, false);
        }
        return buildRpy(sensorInfoEvent.rollAngle, sensorInfoEvent.pitchAngle, sensorInfoEvent.headingAngle, false);
    }

    public static JsonObject buildRpy(double d, double d2, double d3, boolean z) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("r", Double.valueOf(d));
        jsonObject.addProperty("p", Double.valueOf(d2));
        jsonObject.addProperty("y", Double.valueOf(d3));
        if (z) {
            GeoQuaternion geoQuaternionFromAngleZyx = GeoQuaternion.fromAngleZyx(d, d2, d3);
            jsonObject.addProperty("qx", Double.valueOf(geoQuaternionFromAngleZyx.x));
            jsonObject.addProperty("qy", Double.valueOf(geoQuaternionFromAngleZyx.y));
            jsonObject.addProperty("qz", Double.valueOf(geoQuaternionFromAngleZyx.z));
        }
        return jsonObject;
    }

    public static JsonObject buildTeeth(InsNavi insNavi) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("l", buildTooth(insNavi.geodeticLat, insNavi.geodeticLon, insNavi.geodeticElev, insNavi.east, insNavi.north, insNavi.elevation));
        jsonObject.add("r", buildTooth(insNavi.geodeticLatR, insNavi.geodeticLonR, insNavi.geodeticElevR, insNavi.eastR, insNavi.northR, insNavi.elevationR));
        jsonObject.add("c", buildTooth(insNavi.geodeticLatM, insNavi.geodeticLonM, insNavi.geodeticElevM, insNavi.eastM, insNavi.northM, insNavi.elevationM));
        return jsonObject;
    }

    private static JsonObject buildTooth(double d, double d2, double d3, double d4, double d5, double d6) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("lat", formatLatLon(d));
        jsonObject.addProperty("lon", formatLatLon(d2));
        jsonObject.addProperty("hgt", Double.valueOf(d3));
        jsonObject.addProperty("x", Double.valueOf(d4));
        jsonObject.addProperty("y", Double.valueOf(d5));
        jsonObject.addProperty("z", Double.valueOf(d6));
        return jsonObject;
    }

    public static JsonObject buildCollectSample(GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, double d) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("phase_to_hang", Double.valueOf(d));
        JsonObject jsonObject2 = new JsonObject();
        if (gGAEntity != null) {
            jsonObject2.addProperty("lat", Double.valueOf(gGAEntity.latitude));
            jsonObject2.addProperty("lon", Double.valueOf(gGAEntity.longitude));
            jsonObject2.addProperty("hgt", Double.valueOf(gGAEntity.elevation));
        } else {
            jsonObject2.addProperty("lat", (Number) 0);
            jsonObject2.addProperty("lon", (Number) 0);
            jsonObject2.addProperty("hgt", (Number) 0);
        }
        jsonObject.add("gga", jsonObject2);
        if (insNavi != null) {
            jsonObject.add("device", buildRpy(insNavi.rollDegrees, insNavi.pitchDegrees, insNavi.headingDegrees, true));
        } else {
            jsonObject.add("device", buildRpy(0.0d, 0.0d, 0.0d, true));
        }
        if (sensorInfoEvent != null) {
            jsonObject.add("sensor", buildRpy(sensorInfoEvent.rollAngle, sensorInfoEvent.pitchAngle, sensorInfoEvent.headingAngle, true));
        } else {
            jsonObject.add("sensor", buildRpy(0.0d, 0.0d, 0.0d, true));
        }
        jsonObject.addProperty("arm_angle", Double.valueOf(insNavi != null ? insNavi.pitchDegrees : 0.0d));
        return jsonObject;
    }

    public static JsonObject buildSetParam(String str, String str2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("target", "device");
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("calib_params_id", str == null ? "" : str);
        jsonObject2.addProperty("calib_params", str2 == null ? "" : str2);
        StringBuilder sb = new StringBuilder();
        sb.append("CALIBRATE,,SET_PARAM,");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(",");
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        jsonObject2.addProperty("command", sb.toString());
        jsonObject.add("params", jsonObject2);
        return jsonObject;
    }

    public static JsonObject buildMode1Input(ExcavatorEntity excavatorEntity) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("algo", "caliMode1");
        if (excavatorEntity == null) {
            return jsonObject;
        }
        jsonObject.addProperty("hg", Double.valueOf(excavatorEntity.deviceHeight));
        jsonObject.addProperty("gl", Double.valueOf(excavatorEntity.leftDist));
        jsonObject.addProperty("gr", Double.valueOf(excavatorEntity.rigthDist));
        jsonObject.addProperty("lr", Double.valueOf(excavatorEntity.spanDist));
        jsonObject.add("device", buildRpy(excavatorEntity.deviceRoll, excavatorEntity.devicePitch, excavatorEntity.deviceHeading, true));
        return jsonObject;
    }

    public static String buildMode1GoCmd(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return "LOCAL,caliMode1";
        }
        return "LOCAL,caliMode1,HG=" + excavatorEntity.deviceHeight + ",GL=" + excavatorEntity.leftDist + ",GR=" + excavatorEntity.rigthDist + ",LR=" + excavatorEntity.spanDist;
    }

    public static void recordMode1Input(ExcavatorEntity excavatorEntity, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", buildMode1Input(excavatorEntity));
        recordCmdWithLive("INPUT", jsonObject, gGAEntity, insNavi, sensorInfoEvent, null);
    }

    public static JsonObject buildMode23Input(ExcavatorEntity excavatorEntity) {
        JsonObject jsonObject = new JsonObject();
        boolean z = excavatorEntity != null && excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode();
        jsonObject.addProperty("algo", z ? "caliMode3" : "caliMode2");
        if (excavatorEntity == null) {
            return jsonObject;
        }
        jsonObject.addProperty("ha", Double.valueOf(excavatorEntity.HA));
        jsonObject.addProperty("hy", Double.valueOf(excavatorEntity.pq));
        jsonObject.addProperty("ay", Double.valueOf(excavatorEntity.Ay));
        jsonObject.addProperty("ax", Double.valueOf(excavatorEntity.Ax));
        jsonObject.addProperty("dx", Double.valueOf(excavatorEntity.Dx));
        jsonObject.addProperty("ad", Double.valueOf(excavatorEntity.AD));
        jsonObject.addProperty("bd", Double.valueOf(excavatorEntity.BD));
        jsonObject.addProperty("cd", Double.valueOf(excavatorEntity.CD));
        jsonObject.addProperty("bc", Double.valueOf(excavatorEntity.BC));
        jsonObject.add("device", buildRpy(excavatorEntity.deviceRoll, excavatorEntity.devicePitch, excavatorEntity.deviceHeading, true));
        if (!z) {
            jsonObject.add("sensor", buildRpy(excavatorEntity.sensorRoll, excavatorEntity.sensorPitch, excavatorEntity.sensorHeading, true));
        }
        jsonObject.add("tool", ExcavatorCalibHelper.buildToolInputJson(excavatorEntity));
        return jsonObject;
    }

    public static void recordMode23Input(ExcavatorEntity excavatorEntity, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", buildMode23Input(excavatorEntity));
        recordCmdWithLive("INPUT", jsonObject, gGAEntity, insNavi, sensorInfoEvent, null);
    }

    public static void recordToolEvents(ExcavatorEntity excavatorEntity, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        recordToolEvents(excavatorEntity, excavatorEntity, gGAEntity, insNavi, sensorInfoEvent);
    }

    public static void recordReuseBucketInput(Context context, ExcavatorEntity excavatorEntity, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        beginForExcavator(context, excavatorEntity, "local");
        clearReuseBucketInput();
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", buildBucketToolInput(excavatorEntity, excavatorEntity));
        recordKindWithLive("bucket", "INPUT", jsonObject, gGAEntity, insNavi, sensorInfoEvent, null, false);
    }

    public static void recordReuseArmInput(Context context, ExcavatorEntity excavatorEntity, ExcavatorEntity excavatorEntity2, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        beginForExcavator(context, excavatorEntity, "local");
        clearReuseArmInput();
        ExcavatorEntity excavatorEntityPrepareMode21ReuseLogEntity = prepareMode21ReuseLogEntity(excavatorEntity, excavatorEntity2);
        if (excavatorEntityPrepareMode21ReuseLogEntity == null) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", buildMode21Input(excavatorEntityPrepareMode21ReuseLogEntity));
        recordKindWithLive("arm", "INPUT", jsonObject, gGAEntity, insNavi, sensorInfoEvent, null, true);
        recordMode21EventsFromSaved(excavatorEntityPrepareMode21ReuseLogEntity, gGAEntity, insNavi, sensorInfoEvent);
    }

    private static ExcavatorEntity prepareMode21ReuseLogEntity(ExcavatorEntity excavatorEntity, ExcavatorEntity excavatorEntity2) {
        ExcavatorEntity excavatorEntity3 = excavatorEntity2 != null ? excavatorEntity2 : excavatorEntity;
        if (excavatorEntity3 == null) {
            return null;
        }
        ensureMode21SweepAttitudesForLog(excavatorEntity3);
        if (excavatorEntity != null && excavatorEntity != excavatorEntity3) {
            excavatorEntity3.distanceBucketMeasure = excavatorEntity.distanceBucketMeasure || excavatorEntity.isDistanceBucketMeasureFlow();
            if (excavatorEntity.usesDistanceMeasure() || excavatorEntity.isDistanceBucketMeasureFlow()) {
                excavatorEntity3.setDistanceMeasureValues(excavatorEntity.getNT(), excavatorEntity.getAT(), excavatorEntity.getNA(), excavatorEntity.getLy(), excavatorEntity.getRy(), excavatorEntity.getAB());
            } else {
                excavatorEntity3.setMeasureValues(excavatorEntity.getG1(), excavatorEntity.getG2(), excavatorEntity.getG3(), excavatorEntity.getLy(), excavatorEntity.getRy(), excavatorEntity.getAB());
            }
            ShovelEntity shovelEntity = excavatorEntity.shovelEntity;
            if (shovelEntity != null) {
                excavatorEntity3.shovelEntity = shovelEntity;
            }
        }
        return excavatorEntity3;
    }

    private static void ensureMode21SweepAttitudesForLog(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.ensureCalibSoInputsReady();
        excavatorEntity.reloadSweepAttitudesFromJson();
        loadSavedCalibSoInputs(excavatorEntity);
        excavatorEntity.reloadSweepAttitudesFromJson();
    }

    public static void clearReuseBucketInput() {
        CalibrateLogToFile.removeEventsWithKindAndTag("bucket", "INPUT");
        CalibrateLogToFile.removeLatestMakeToolPair();
    }

    public static void clearReuseArmInput() {
        CalibrateLogToFile.removeEventsWithKindAndTag("arm", "INPUT");
        CalibrateLogToFile.removeEventsFromTagOnward("sweep1");
    }

    private static void recordToolEvents(ExcavatorEntity excavatorEntity, ExcavatorEntity excavatorEntity2, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        ExcavatorEntity excavatorEntity3 = excavatorEntity2 == null ? excavatorEntity : excavatorEntity2;
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", buildBucketToolInput(excavatorEntity, excavatorEntity3));
        recordCmdWithLive("INPUT", jsonObject, gGAEntity, insNavi, sensorInfoEvent, null, false);
        JsonObject jsonObject2 = new JsonObject();
        if (excavatorEntity3 != null) {
            excavatorEntity = excavatorEntity3;
        }
        jsonObject2.addProperty("cmd", buildMakeToolCmd(excavatorEntity));
        recordCmdWithLive("MAKE_TOOL", jsonObject2, gGAEntity, insNavi, sensorInfoEvent, null, false);
    }

    public static JsonObject buildBucketToolInput(ExcavatorEntity excavatorEntity, ExcavatorEntity excavatorEntity2) {
        String str;
        ShovelEntity shovelEntity;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("algo", "tool");
        if (excavatorEntity != null && (shovelEntity = excavatorEntity.shovelEntity) != null && !TextUtils.isEmpty(shovelEntity.name)) {
            str = excavatorEntity.shovelEntity.name;
        } else if (excavatorEntity2 != null && !TextUtils.isEmpty(excavatorEntity2.name)) {
            str = excavatorEntity2.name;
        } else {
            str = "";
        }
        jsonObject.addProperty("bucket", str);
        if (excavatorEntity2 == null) {
            excavatorEntity2 = excavatorEntity;
        }
        if (excavatorEntity2 == null) {
            return jsonObject;
        }
        if (useDistanceToolLog(excavatorEntity, excavatorEntity2)) {
            jsonObject.addProperty("ab", Double.valueOf(excavatorEntity2.getAB()));
            jsonObject.addProperty("at", Double.valueOf(excavatorEntity2.getAT()));
            jsonObject.addProperty("an", Double.valueOf(excavatorEntity2.getNA()));
            jsonObject.addProperty("nt", Double.valueOf(excavatorEntity2.getNT()));
            jsonObject.addProperty("lr", Double.valueOf(excavatorEntity2.getLy() * 2.0d));
            return jsonObject;
        }
        jsonObject.addProperty("g1", Double.valueOf(excavatorEntity2.getG1()));
        jsonObject.addProperty("g2", Double.valueOf(excavatorEntity2.getG2()));
        jsonObject.addProperty("g3", Double.valueOf(excavatorEntity2.getG3()));
        jsonObject.addProperty("lr", Double.valueOf(excavatorEntity2.getLy() * 2.0d));
        jsonObject.addProperty("ab", Double.valueOf(excavatorEntity2.getAB()));
        return jsonObject;
    }

    public static String buildMakeToolCmd(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return "LOCAL,tool,fromDistance";
        }
        if (useDistanceToolLog(excavatorEntity, excavatorEntity)) {
            return "LOCAL,tool,fromDistance,AB=" + excavatorEntity.getAB() + ",AT=" + excavatorEntity.getAT() + ",AN=" + excavatorEntity.getNA() + ",NT=" + excavatorEntity.getNT() + ",LR=" + (excavatorEntity.getLy() * 2.0d);
        }
        return "LOCAL,tool,fromMeasure,G1=" + excavatorEntity.getG1() + ",G2=" + excavatorEntity.getG2() + ",G3=" + excavatorEntity.getG3() + ",LR=" + (excavatorEntity.getLy() * 2.0d) + ",AB=" + excavatorEntity.getAB();
    }

    private static boolean useDistanceToolLog(ExcavatorEntity excavatorEntity, ExcavatorEntity excavatorEntity2) {
        if (excavatorEntity == null || !excavatorEntity.isDistanceBucketMeasureFlow()) {
            return excavatorEntity2 != null && excavatorEntity2.usesDistanceMeasure();
        }
        return true;
    }

    public static JsonObject buildMode21Input(ExcavatorEntity excavatorEntity) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("algo", "caliMode21");
        if (excavatorEntity == null) {
            return jsonObject;
        }
        jsonObject.addProperty("phase_to_hang", Double.valueOf(excavatorEntity.phaseToHang));
        jsonObject.addProperty("ha", Double.valueOf(excavatorEntity.HA));
        jsonObject.addProperty("hy", Double.valueOf(excavatorEntity.pq));
        jsonObject.addProperty("dx", Double.valueOf(excavatorEntity.Dx));
        jsonObject.addProperty("ad", Double.valueOf(excavatorEntity.AD));
        jsonObject.addProperty("cd", Double.valueOf(excavatorEntity.CD));
        jsonObject.addProperty("bc", Double.valueOf(excavatorEntity.BC));
        jsonObject.add("sweep", buildSweepArrayExcludingDc(excavatorEntity.reDeviceAttitudes, 2));
        jsonObject.add("a_device", buildRpy(excavatorEntity.aDeviceRoll, excavatorEntity.aDevicePitch, excavatorEntity.aDeviceHeading, true));
        jsonObject.add("b_device", buildRpy(excavatorEntity.bDeviceRoll, excavatorEntity.bDevicePitch, excavatorEntity.bDeviceHeading, true));
        jsonObject.add("b_sensor", buildRpy(excavatorEntity.bSensorRoll, excavatorEntity.bSensorPitch, excavatorEntity.bSensorHeading, true));
        jsonObject.add("dc_device", buildRpy(excavatorEntity.dcDeviceRoll, excavatorEntity.dcDevicePitch, excavatorEntity.dcDeviceHeading, true));
        jsonObject.add("dc_sensor", buildRpy(excavatorEntity.dcSensorRoll, excavatorEntity.dcSensorPitch, excavatorEntity.dcSensorHeading, true));
        jsonObject.add("tool", ExcavatorCalibHelper.buildToolInputJson(excavatorEntity));
        return jsonObject;
    }

    public static String buildMode21GoCmd(ExcavatorEntity excavatorEntity) {
        int iCountSweepExcludingDc = countSweepExcludingDc(excavatorEntity != null ? excavatorEntity.reDeviceAttitudes : null, 2);
        if (excavatorEntity == null) {
            return "LOCAL,caliMode21,sweep=" + iCountSweepExcludingDc;
        }
        return "LOCAL,caliMode21,sweep=" + iCountSweepExcludingDc + ",HA=" + excavatorEntity.HA + ",phaseToHang=" + excavatorEntity.phaseToHang;
    }

    public static void recordMode21EventsFromSaved(ExcavatorEntity excavatorEntity, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        if (excavatorEntity == null) {
            return;
        }
        ensureMode21SweepAttitudesForLog(excavatorEntity);
        double[][] dArr = excavatorEntity.reDeviceAttitudes;
        double[][] dArr2 = excavatorEntity.reSensorAttitudes;
        String[] strArr = {"sweep1", "sweep2", "sweep3", "sweep4"};
        int iMin = dArr == null ? 0 : Math.min(4, dArr.length);
        for (int i = 0; i < iMin; i++) {
            double[] dArr3 = dArr[i];
            if (dArr3 != null && dArr3.length >= 3 && (dArr3[0] != 0.0d || dArr3[1] != 0.0d || dArr3[2] != 0.0d)) {
                InsNavi insNaviInsFromRow = insFromRow(dArr3);
                SensorInfoEvent sensorInfoEventSensorFromRow = sensorFromRow(dArr2, i);
                recordCollect(strArr[i], gGAEntity, insNaviInsFromRow, sensorInfoEventSensorFromRow, null, buildCollectSample(gGAEntity, insNaviInsFromRow, sensorInfoEventSensorFromRow, excavatorEntity.phaseToHang), insNavi);
            }
        }
        InsNavi insNaviInsFromRpy = insFromRpy(excavatorEntity.aDeviceRoll, excavatorEntity.aDevicePitch, excavatorEntity.aDeviceHeading);
        SensorInfoEvent sensorInfoEvent2 = new SensorInfoEvent(0, excavatorEntity.bSensorRoll, excavatorEntity.bSensorPitch, excavatorEntity.bSensorHeading);
        recordCollect("hab", gGAEntity, insNaviInsFromRpy, sensorInfoEvent2, null, buildCollectSample(gGAEntity, insNaviInsFromRpy, sensorInfoEvent2, excavatorEntity.phaseToHang), insNavi);
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", buildMode21Input(excavatorEntity));
        recordCmdFromSaved("INPUT", jsonObject, excavatorEntity, true, gGAEntity, insNavi, sensorInfoEvent);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("cmd", buildMode21GoCmd(excavatorEntity));
        recordCmdFromSaved("GO", jsonObject2, excavatorEntity, true, gGAEntity, insNavi, sensorInfoEvent);
    }

    public static void recordCmdFromSaved(String str, JsonObject jsonObject, ExcavatorEntity excavatorEntity, boolean z, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        loadSavedCalibSoInputs(excavatorEntity);
        recordCmdWithLive(str, jsonObject, gGAEntity, insFromSavedMode21(excavatorEntity), sensorFromSavedMode21(excavatorEntity), null, z, insNavi);
    }

    public static InsNavi insFromSavedMode21(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new InsNavi();
        }
        double d = excavatorEntity.aDeviceRoll;
        if (d != 0.0d || excavatorEntity.aDevicePitch != 0.0d || excavatorEntity.aDeviceHeading != 0.0d) {
            return insFromRpy(d, excavatorEntity.aDevicePitch, excavatorEntity.aDeviceHeading);
        }
        if (excavatorEntity.deviceRoll != 0.0d || excavatorEntity.devicePitch != 0.0d || excavatorEntity.deviceHeading != 0.0d) {
            return insFromSavedDevice(excavatorEntity);
        }
        double[][] dArr = excavatorEntity.reDeviceAttitudes;
        if (dArr != null && dArr.length > 0) {
            return insFromRow(dArr[0]);
        }
        return new InsNavi();
    }

    public static SensorInfoEvent sensorFromSavedMode21(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new SensorInfoEvent(0, 0.0d, 0.0d, 0.0d);
        }
        double d = excavatorEntity.bSensorRoll;
        if (d != 0.0d || excavatorEntity.bSensorPitch != 0.0d || excavatorEntity.bSensorHeading != 0.0d) {
            return new SensorInfoEvent(0, d, excavatorEntity.bSensorPitch, excavatorEntity.bSensorHeading);
        }
        return sensorFromSaved(excavatorEntity);
    }

    private static void loadSavedCalibSoInputs(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.loadCalibSoInputsFromJson();
    }

    public static InsNavi insFromSavedDevice(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new InsNavi();
        }
        return insFromRpy(excavatorEntity.deviceRoll, excavatorEntity.devicePitch, excavatorEntity.deviceHeading);
    }

    public static SensorInfoEvent sensorFromSaved(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new SensorInfoEvent(0, 0.0d, 0.0d, 0.0d);
        }
        return new SensorInfoEvent(0, excavatorEntity.sensorRoll, excavatorEntity.sensorPitch, excavatorEntity.sensorHeading);
    }

    private static InsNavi insFromRow(double[] dArr) {
        if (dArr == null || dArr.length < 3) {
            return new InsNavi();
        }
        return insFromRpy(dArr[0], dArr[1], dArr[2]);
    }

    private static SensorInfoEvent sensorFromRow(double[][] dArr, int i) {
        double[] dArr2;
        if (dArr == null || i < 0 || i >= dArr.length || (dArr2 = dArr[i]) == null || dArr2.length < 3) {
            return new SensorInfoEvent(0, 0.0d, 0.0d, 0.0d);
        }
        return new SensorInfoEvent(0, dArr2[0], dArr2[1], dArr2[2]);
    }

    private static InsNavi insFromRpy(double d, double d2, double d3) {
        InsNavi insNavi = new InsNavi();
        insNavi.rollDegrees = d;
        insNavi.pitchDegrees = d2;
        insNavi.headingDegrees = d3;
        return insNavi;
    }

    public static String buildMode23GoCmd(ExcavatorEntity excavatorEntity) {
        String str = (excavatorEntity == null || excavatorEntity.mode != ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) ? "caliMode2" : "caliMode3";
        if (excavatorEntity == null) {
            return "LOCAL," + str;
        }
        return "LOCAL," + str + ",HA=" + excavatorEntity.HA + ",Hy=" + excavatorEntity.pq + ",Ay=" + excavatorEntity.Ay + ",Ax=" + excavatorEntity.Ax + ",Dx=" + excavatorEntity.Dx + ",AD=" + excavatorEntity.AD + ",BD=" + excavatorEntity.BD + ",CD=" + excavatorEntity.CD + ",BC=" + excavatorEntity.BC;
    }

    public static void recordCmdWithLive(String str, JsonObject jsonObject, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        recordCmdWithLive(str, jsonObject, gGAEntity, insNavi, sensorInfoEvent, d, true);
    }

    public static void recordCmdWithLive(String str, JsonObject jsonObject, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, boolean z) {
        recordCmdWithLive(str, jsonObject, gGAEntity, insNavi, sensorInfoEvent, d, z, null);
    }

    public static void recordCmdWithLive(String str, JsonObject jsonObject, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, boolean z, InsNavi insNavi2) {
        JsonObject jsonObjectBuildCommonData = buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d, z, insNavi2);
        if (jsonObject != null) {
            for (String str2 : jsonObject.keySet()) {
                jsonObjectBuildCommonData.add(str2, jsonObject.get(str2));
            }
        }
        CalibrateLogToFile.recordEvent("cmd", str, jsonObjectBuildCommonData);
    }

    private static void recordKindWithLive(String str, String str2, JsonObject jsonObject, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, boolean z) {
        JsonObject jsonObjectBuildCommonData = buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d, z, null);
        if (jsonObject != null) {
            for (String str3 : jsonObject.keySet()) {
                jsonObjectBuildCommonData.add(str3, jsonObject.get(str3));
            }
        }
        CalibrateLogToFile.recordEvent(str, str2, jsonObjectBuildCommonData);
    }

    public static JsonArray buildSweepArrayExcludingDc(double[][] dArr, int i) {
        double[] dArr2;
        JsonArray jsonArray = new JsonArray();
        if (dArr != null) {
            for (int i2 = 0; i2 < dArr.length; i2++) {
                if (i2 != i && (dArr2 = dArr[i2]) != null && dArr2.length >= 3) {
                    jsonArray.add(buildRpy(dArr2[0], dArr2[1], dArr2[2], true));
                }
            }
        }
        return jsonArray;
    }

    public static int countSweepExcludingDc(double[][] dArr, int i) {
        double[] dArr2;
        if (dArr == null) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (i3 != i && (dArr2 = dArr[i3]) != null && dArr2.length >= 3) {
                i2++;
            }
        }
        return i2;
    }

    public static void recordSetParamReply(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        String str2;
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            if (str == null) {
                str = "";
            }
            jsonObject.addProperty("reply", str);
            if ("bucket".equals(CalibrateLogToFile.getActiveFileFlow())) {
                str2 = "SET_PARAM";
            } else {
                str2 = "SET_PARAM 应答";
            }
            recordCmdWithLive(str2, jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
        }
    }

    public static void recordGetParamCmd(GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("cmd", "CALIBRATE,,GET_PARAM");
            recordCmdWithLive("GET_PARAM", jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
        }
    }

    public static void recordGetParamReply(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            if (str == null) {
                str = "";
            }
            jsonObject.addProperty("reply", str);
            recordCmdWithLive("GET_PARAM", jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
        }
    }

    public static String buildGetParamReplyLine(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("#CALIBRATE,,GET_PARAM,");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(",");
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        sb.append("\r\n");
        return sb.toString();
    }

    public static void recordBucketSwitchApply(String str, String str2, String str3, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("algo", "setTool");
            if (str == null) {
                str = "";
            }
            jsonObject.addProperty("calib_params", str);
            if (str2 == null) {
                str2 = "";
            }
            jsonObject.addProperty("tool_param", str2);
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.add("input", jsonObject);
            recordCmdWithLive("INPUT", jsonObject2, gGAEntity, insNavi, sensorInfoEvent, d);
            JsonObject jsonObject3 = new JsonObject();
            if (str3 == null) {
                str3 = "";
            }
            jsonObject3.addProperty("cmd", "LOCAL,switchBucketB64," + str3);
            recordCmdWithLive("ADJUST_PARAM", jsonObject3, gGAEntity, insNavi, sensorInfoEvent, d);
        }
    }

    public static JsonObject buildBucketSwitchMeta(ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity, String str, boolean z) {
        String str2;
        String str3;
        JsonObject jsonObject = new JsonObject();
        if (excavatorEntity == null || (str2 = excavatorEntity.name) == null) {
            str2 = "";
        }
        jsonObject.addProperty("excavator_name", str2);
        if (shovelEntity == null || (str3 = shovelEntity.name) == null) {
            str3 = "";
        }
        jsonObject.addProperty("bucket", str3);
        jsonObject.addProperty("mode", resolveFileFlow(excavatorEntity));
        if (str == null) {
            str = "";
        }
        jsonObject.addProperty("new_calib_params_id", str);
        jsonObject.addProperty("ok", Boolean.valueOf(z));
        return jsonObject;
    }

    public static void endBucketSwitchFailed(ExcavatorEntity excavatorEntity, ShovelEntity shovelEntity) {
        clearAwaitSetParamReply();
        if (CalibrateLogToFile.hasActiveSession() && "bucket".equals(CalibrateLogToFile.getActiveFileFlow())) {
            CalibrateLogToFile.endSession(false, buildBucketSwitchMeta(excavatorEntity, shovelEntity, null, false));
        }
    }

    public static void recordApplyReply(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            if (str == null) {
                str = "";
            }
            jsonObject.addProperty("reply", str);
            recordCmdWithLive("apply", jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
        }
    }

    public static void scheduleEndAfterSetParamReply(JsonObject jsonObject) {
        synchronized (AWAIT_SET_PARAM_LOCK) {
            awaitSetParamReply = true;
            pendingEndMeta = jsonObject;
        }
    }

    public static void clearAwaitSetParamReply() {
        synchronized (AWAIT_SET_PARAM_LOCK) {
            awaitSetParamReply = false;
            pendingEndMeta = null;
        }
    }

    public static void endAwaitingSessionIfNeeded() {
        synchronized (AWAIT_SET_PARAM_LOCK) {
            try {
                if (awaitSetParamReply) {
                    awaitSetParamReply = false;
                    JsonObject jsonObject = pendingEndMeta;
                    pendingEndMeta = null;
                    if (CalibrateLogToFile.hasActiveSession()) {
                        if (jsonObject == null) {
                            jsonObject = new JsonObject();
                        }
                        CalibrateLogToFile.endSession(true, jsonObject);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean handleSetParamReplyIfWaiting(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        return handleSetParamReplyIfWaiting(str, gGAEntity, insNavi, sensorInfoEvent, d, null);
    }

    public static boolean handleSetParamReplyIfWaiting(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, Runnable runnable) {
        synchronized (AWAIT_SET_PARAM_LOCK) {
            try {
                if (!awaitSetParamReply) {
                    return false;
                }
                awaitSetParamReply = false;
                JsonObject jsonObject = pendingEndMeta;
                pendingEndMeta = null;
                if (!CalibrateLogToFile.hasActiveSession()) {
                    if (runnable != null) {
                        runnable.run();
                    }
                    return true;
                }
                recordSetParamReply(str, gGAEntity, insNavi, sensorInfoEvent, d);
                if (jsonObject == null) {
                    jsonObject = new JsonObject();
                }
                CalibrateLogToFile.endSession(true, jsonObject, runnable);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void recordCollect(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, JsonObject jsonObject) {
        recordCollect(str, gGAEntity, insNavi, sensorInfoEvent, d, jsonObject, null);
    }

    public static void recordCollect(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d, JsonObject jsonObject, InsNavi insNavi2) {
        JsonObject jsonObjectBuildCommonData = buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d, true, insNavi2);
        if (jsonObject != null) {
            jsonObjectBuildCommonData.add("sample", jsonObject);
        }
        CalibrateLogToFile.recordEvent("collect", str, jsonObjectBuildCommonData);
    }

    public static void recordFineTuneK(ExcavatorCalibHelper.FineTuneSample fineTuneSample, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        CalibrateLogToFile.recordEvent("collect", "K", buildFineTuneCollectData(fineTuneSample, gGAEntity, insNavi, sensorInfoEvent, d));
    }

    private static JsonObject buildFineTuneCollectData(ExcavatorCalibHelper.FineTuneSample fineTuneSample, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        JsonObject jsonObjectBuildRpy;
        JsonObject jsonObjectBuildCommonData = buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d, true);
        if (fineTuneSample == null) {
            return jsonObjectBuildCommonData;
        }
        JsonObject jsonObjectBuildRpy2 = buildRpy(fineTuneSample.deviceRoll, fineTuneSample.devicePitch, fineTuneSample.deviceHeading, false);
        if (d == null) {
            jsonObjectBuildRpy2.addProperty("y_err", (Number) 0);
        } else {
            jsonObjectBuildRpy2.addProperty("y_err", d);
        }
        jsonObjectBuildCommonData.add("device", jsonObjectBuildRpy2);
        if (fineTuneSample.sensorValid) {
            jsonObjectBuildRpy = buildRpy(fineTuneSample.sensorRoll, fineTuneSample.sensorPitch, fineTuneSample.sensorHeading, false);
        } else {
            jsonObjectBuildRpy = buildRpy(0.0d, 0.0d, 0.0d, false);
        }
        jsonObjectBuildCommonData.add("sensor", jsonObjectBuildRpy);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("lat", formatLatLon(fineTuneSample.lat));
        jsonObject.addProperty("lon", formatLatLon(fineTuneSample.lon));
        jsonObject.addProperty("hgt", Double.valueOf(fineTuneSample.elev));
        if (gGAEntity != null) {
            jsonObject.addProperty("q", Integer.valueOf(gGAEntity.quality));
            jsonObject.addProperty("sats", Integer.valueOf(gGAEntity.useStarNum));
            jsonObject.addProperty("hdop", Double.valueOf(gGAEntity.hdop));
            jsonObject.addProperty("age", Float.valueOf(gGAEntity.age));
        } else {
            jsonObject.addProperty("q", (Number) 0);
            jsonObject.addProperty("sats", (Number) 0);
            jsonObject.addProperty("hdop", (Number) 0);
            jsonObject.addProperty("age", (Number) 0);
        }
        jsonObjectBuildCommonData.add("gga", jsonObject);
        jsonObjectBuildCommonData.add("sample", buildFineTuneHabSample(fineTuneSample));
        return jsonObjectBuildCommonData;
    }

    public static JsonObject buildFineTuneInputSample(ExcavatorCalibHelper.FineTuneSample fineTuneSample) {
        return buildFineTuneInputSample(fineTuneSample, true);
    }

    public static JsonObject buildFineTuneInputSample(ExcavatorCalibHelper.FineTuneSample fineTuneSample, boolean z) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("seed", Boolean.valueOf(z));
        jsonObject.addProperty("phase_to_hang", Double.valueOf(fineTuneSample != null ? fineTuneSample.phaseToHang : 0.0d));
        JsonObject jsonObject2 = new JsonObject();
        if (fineTuneSample != null) {
            jsonObject2.addProperty("lat", Double.valueOf(fineTuneSample.lat));
            jsonObject2.addProperty("lon", Double.valueOf(fineTuneSample.lon));
            jsonObject2.addProperty("hgt", Double.valueOf(fineTuneSample.elev));
        } else {
            jsonObject2.addProperty("lat", (Number) 0);
            jsonObject2.addProperty("lon", (Number) 0);
            jsonObject2.addProperty("hgt", (Number) 0);
        }
        jsonObject.add("gga", jsonObject2);
        JsonArray jsonArray = new JsonArray();
        if (fineTuneSample != null) {
            jsonArray.add(Double.valueOf(fineTuneSample.north));
            jsonArray.add(Double.valueOf(fineTuneSample.east));
            jsonArray.add(Double.valueOf(fineTuneSample.down));
        } else {
            jsonArray.add((Number) 0);
            jsonArray.add((Number) 0);
            jsonArray.add((Number) 0);
        }
        jsonObject.add("ned", jsonArray);
        if (fineTuneSample != null) {
            jsonObject.add("device", buildRpy(fineTuneSample.deviceRoll, fineTuneSample.devicePitch, fineTuneSample.deviceHeading, true));
            jsonObject.add("sensor", buildRpy(fineTuneSample.sensorRoll, fineTuneSample.sensorPitch, fineTuneSample.sensorHeading, true));
            return jsonObject;
        }
        jsonObject.add("device", buildRpy(0.0d, 0.0d, 0.0d, true));
        jsonObject.add("sensor", buildRpy(0.0d, 0.0d, 0.0d, true));
        return jsonObject;
    }

    public static JsonObject buildFineTuneHabSample(ExcavatorCalibHelper.FineTuneSample fineTuneSample) {
        JsonObject jsonObjectBuildRpy;
        JsonObject jsonObject = new JsonObject();
        if (fineTuneSample == null) {
            jsonObject.addProperty("phase_to_hang", (Number) 0);
            jsonObject.add("device", buildRpy(0.0d, 0.0d, 0.0d, true));
            jsonObject.add("sensor", buildRpy(0.0d, 0.0d, 0.0d, true));
            return jsonObject;
        }
        jsonObject.addProperty("phase_to_hang", Double.valueOf(fineTuneSample.phaseToHang));
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("lat", Double.valueOf(fineTuneSample.lat));
        jsonObject2.addProperty("lon", Double.valueOf(fineTuneSample.lon));
        jsonObject2.addProperty("hgt", Double.valueOf(fineTuneSample.elev));
        jsonObject.add("gga", jsonObject2);
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(Double.valueOf(fineTuneSample.north));
        jsonArray.add(Double.valueOf(fineTuneSample.east));
        jsonArray.add(Double.valueOf(fineTuneSample.down));
        jsonObject.add("ned", jsonArray);
        jsonObject.add("device", buildRpy(fineTuneSample.deviceRoll, fineTuneSample.devicePitch, fineTuneSample.deviceHeading, true));
        if (fineTuneSample.sensorValid) {
            jsonObjectBuildRpy = buildRpy(fineTuneSample.sensorRoll, fineTuneSample.sensorPitch, fineTuneSample.sensorHeading, true);
        } else {
            jsonObjectBuildRpy = buildRpy(0.0d, 0.0d, 0.0d, true);
        }
        jsonObject.add("sensor", jsonObjectBuildRpy);
        return jsonObject;
    }

    public static JsonObject buildHabSnapshot(InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        JsonObject jsonObject = new JsonObject();
        if (insNavi != null) {
            jsonObject.add("device", buildRpy(insNavi.rollDegrees, insNavi.pitchDegrees, insNavi.headingDegrees, true));
        } else {
            jsonObject.add("device", buildRpy(0.0d, 0.0d, 0.0d, true));
        }
        if (sensorInfoEvent != null) {
            jsonObject.add("sensor", buildRpy(sensorInfoEvent.rollAngle, sensorInfoEvent.pitchAngle, sensorInfoEvent.headingAngle, true));
            return jsonObject;
        }
        jsonObject.add("sensor", buildRpy(0.0d, 0.0d, 0.0d, true));
        return jsonObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void recordPreciseFivePointEvents(ExcavatorCalibHelper.FineTuneSample fineTuneSample, int i, String str, double d, JsonArray jsonArray, JsonArray jsonArray2, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d2) {
        GGAEntity gGAEntity2 = gGAEntity;
        InsNavi insNavi2 = insNavi;
        SensorInfoEvent sensorInfoEvent2 = sensorInfoEvent;
        Double d3 = d2;
        recordFineTuneK(fineTuneSample, gGAEntity2, insNavi2, sensorInfoEvent2, d3);
        JsonObject jsonObjectBuildFineTuneHabSample = buildFineTuneHabSample(fineTuneSample);
        boolean z = d != 0.0d ? 1 : 0;
        int i2 = 1;
        int i3 = 1;
        while (i2 <= 5) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("algo", "adjustHabVertical");
            int i4 = i3 + 1;
            jsonObject.addProperty("seq", Integer.valueOf(i3));
            jsonObject.addProperty("round", Integer.valueOf(i2));
            jsonObject.addProperty("type", "fivePoint");
            jsonObject.addProperty("source_mode", Integer.valueOf(i));
            jsonObject.addProperty("source_params", str == null ? "" : str);
            jsonObject.add("sample", jsonObjectBuildFineTuneHabSample);
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.add("input", jsonObject);
            recordCmdWithLive("INPUT", jsonObject2, gGAEntity2, insNavi2, sensorInfoEvent2, d3);
            int i5 = i3 + 2;
            gGAEntity2 = gGAEntity;
            insNavi2 = insNavi;
            sensorInfoEvent2 = sensorInfoEvent;
            d3 = d2;
            int i6 = i2;
            recordFivePointAdjustHeightInput(i4, i6, z | 16, new int[]{3, 4, 5}, jsonArray, d, gGAEntity2, insNavi2, sensorInfoEvent2, d3);
            i3 += 3;
            recordFivePointAdjustHeightInput(i5, i6, z | 32, new int[]{1, 2, 4}, jsonArray2, d, gGAEntity2, insNavi2, sensorInfoEvent2, d3);
            i2 = i6 + 1;
        }
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty("cmd", "LOCAL,adjustHeight,fivePoint,hab=true,rounds=5,heightValid=" + z + ",samples=5");
        recordCmdWithLive("ADJUST", jsonObject3, gGAEntity, insNavi, sensorInfoEvent, d2);
    }

    private static void recordFivePointAdjustHeightInput(int i, int i2, int i3, int[] iArr, JsonArray jsonArray, double d, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("algo", "adjustHeight");
        jsonObject.addProperty("seq", Integer.valueOf(i));
        jsonObject.addProperty("round", Integer.valueOf(i2));
        jsonObject.addProperty("type", "fivePoint");
        jsonObject.addProperty("flag", Integer.valueOf(i3));
        JsonArray jsonArray2 = new JsonArray();
        if (iArr != null) {
            for (int i4 : iArr) {
                jsonArray2.add(Integer.valueOf(i4));
            }
        }
        jsonObject.add("points", jsonArray2);
        jsonObject.addProperty("ref_height", Double.valueOf(d));
        if (jsonArray == null) {
            jsonArray = new JsonArray();
        }
        jsonObject.add("samples", jsonArray);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("input", jsonObject);
        recordCmdWithLive("INPUT", jsonObject2, gGAEntity, insNavi, sensorInfoEvent, d2);
    }

    public static void recordSetToolInput(String str, double d, JsonArray jsonArray, JsonArray jsonArray2, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("algo", "setTool");
        if (str == null) {
            str = "";
        }
        jsonObject.addProperty("bucket", str);
        jsonObject.addProperty("ab", Double.valueOf(d));
        if (jsonArray == null) {
            jsonArray = toJsonArray(0.0d, 0.0d, 0.0d);
        }
        jsonObject.add("t0", jsonArray);
        if (jsonArray2 == null) {
            jsonArray2 = toJsonArray(0.0d, 0.0d, 0.0d);
        }
        jsonObject.add("t1", jsonArray2);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("input", jsonObject);
        recordCmdWithLive("INPUT", jsonObject2, gGAEntity, insNavi, sensorInfoEvent, d2);
    }

    public static void recordFineTuneKnownHeightPoint(double d, double d2, double d3, boolean z, double[] dArr, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d4) {
        JsonObject jsonObjectBuildCommonData = buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d4, true);
        JsonObject jsonObject = new JsonObject();
        if (z) {
            jsonObject.addProperty("lat", formatLatLon(d));
            jsonObject.addProperty("lon", formatLatLon(d2));
        } else {
            jsonObject.addProperty("lat", "0");
            jsonObject.addProperty("lon", "0");
        }
        jsonObject.addProperty("hgt", Double.valueOf(d3));
        if (gGAEntity != null) {
            jsonObject.addProperty("q", Integer.valueOf(gGAEntity.quality));
            jsonObject.addProperty("sats", Integer.valueOf(gGAEntity.useStarNum));
            jsonObject.addProperty("hdop", Double.valueOf(gGAEntity.hdop));
            jsonObject.addProperty("age", Float.valueOf(gGAEntity.age));
        } else {
            jsonObject.addProperty("q", (Number) 0);
            jsonObject.addProperty("sats", (Number) 0);
            jsonObject.addProperty("hdop", (Number) 0);
            jsonObject.addProperty("age", (Number) 0);
        }
        jsonObjectBuildCommonData.add("gga", jsonObject);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("lat", Double.valueOf(z ? d : 0.0d));
        jsonObject2.addProperty("lon", Double.valueOf(z ? d2 : 0.0d));
        jsonObject2.addProperty("hgt", Double.valueOf(d3));
        jsonObject2.addProperty("has_llh", Boolean.valueOf(z));
        JsonArray jsonArray = new JsonArray();
        if (dArr != null && dArr.length >= 3) {
            jsonArray.add(Double.valueOf(PointLibCoordUtils.roundElev(dArr[0])));
            jsonArray.add(Double.valueOf(PointLibCoordUtils.roundElev(dArr[1])));
            jsonArray.add(Double.valueOf(PointLibCoordUtils.roundElev(dArr[2])));
        } else {
            jsonArray.add((Number) 0);
            jsonArray.add((Number) 0);
            jsonArray.add((Number) 0);
        }
        jsonObject2.add("ned", jsonArray);
        jsonObjectBuildCommonData.add("sample", jsonObject2);
        CalibrateLogToFile.recordEvent("collect", "已知高程点", jsonObjectBuildCommonData);
    }

    public static void recordFineTuneNineFourInput(String str, int i, int i2, String str2, double d, JsonArray jsonArray, JsonObject jsonObject, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d2) {
        JsonObject jsonObjectBuildCommonData = buildCommonData(gGAEntity, insNavi, sensorInfoEvent, d2, true);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("algo", "adjustHeight");
        if (str == null) {
            str = "";
        }
        jsonObject2.addProperty("type", str);
        jsonObject2.addProperty("flag", Integer.valueOf(i));
        jsonObject2.addProperty("source_mode", Integer.valueOf(i2));
        if (str2 == null) {
            str2 = "";
        }
        jsonObject2.addProperty("source_params", str2);
        jsonObject2.addProperty("ref_height", Double.valueOf(d));
        if (jsonArray == null) {
            jsonArray = new JsonArray();
        }
        jsonObject2.add("samples", jsonArray);
        if (jsonObject == null) {
            jsonObject = buildHabSnapshot(null, null);
        }
        jsonObject2.add("hab", jsonObject);
        jsonObjectBuildCommonData.add("input", jsonObject2);
        CalibrateLogToFile.recordEvent("cmd", "input", jsonObjectBuildCommonData);
    }

    public static void recordFineTuneNineFourAdjustHeight(String str, int i, int i2, boolean z, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        if (str == null) {
            str = "";
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("cmd", "LOCAL,adjustHeight," + str + ",hab=false,heightValid=" + z + ",samples=" + i2 + ",flag=" + i);
        jsonObject.addProperty("algo", "adjustHeight");
        jsonObject.addProperty("type", str);
        jsonObject.addProperty("flag", Integer.valueOf(i));
        recordCmdWithLive("ADJUST", jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
    }

    public static void recordFineTuneSetTool(String str, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        JsonObject jsonObject = new JsonObject();
        if (str == null) {
            str = "";
        }
        jsonObject.addProperty("cmd", str);
        recordCmdWithLive("SET_TOOL", jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
    }

    public static void recordFineTuneSetParam(String str, String str2, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, Double d) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("set_param", buildSetParam(str, str2));
        recordCmdWithLive("SET_PARAM", jsonObject, gGAEntity, insNavi, sensorInfoEvent, d);
    }

    public static void endFinetuneSessionFailed(String str) {
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("ok", Boolean.FALSE);
            if (str != null) {
                jsonObject.addProperty("type", str);
            }
            CalibrateLogToFile.endSession(false, jsonObject);
        }
    }

    private static String formatLatLon(double d) {
        return String.format(Locale.US, "%.8f", Double.valueOf(d));
    }

    public static JsonArray toJsonArray(double... dArr) {
        JsonArray jsonArray = new JsonArray();
        if (dArr != null) {
            for (double d : dArr) {
                jsonArray.add(Double.valueOf(d));
            }
        }
        return jsonArray;
    }
}

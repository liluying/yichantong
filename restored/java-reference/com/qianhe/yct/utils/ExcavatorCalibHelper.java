package com.qianhe.yct.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.qh.libexcavator.Calibration;
import com.qh.libexcavator.CalibrationMode1;
import com.qh.libexcavator.CalibrationMode2;
import com.qh.libexcavator.CalibrationMode2_1;
import com.qh.libexcavator.CalibrationMode3;
import com.qh.libexcavator.Excavator;
import com.qh.libexcavator.GeoQuaternion;
import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ExcavatorCalibHelper {
    private static volatile String loggedVersion;

    /* JADX INFO: Access modifiers changed from: private */
    interface BinaryWriter {
        int write(byte[] bArr);
    }

    public static final class FineTuneSample implements Serializable {
        private static final long serialVersionUID = 1;
        public double deviceHeading;
        public double devicePitch;
        public double deviceRoll;
        public double down;
        public double east;
        public double elev;
        public double lat;
        public double lon;
        public double north;
        public double phaseToHang;
        public double sensorHeading;
        public double sensorPitch;
        public double sensorRoll;
        public boolean sensorValid;
    }

    private static boolean shouldExtractTool(int i) {
        return ((i & 8) == 0 && (i & 16) == 0 && (i & 32) == 0) ? false : true;
    }

    public static final class Result {
        public final String calibParamsBase64;
        public final int code;

        public Result(int i, String str) {
            this.code = i;
            this.calibParamsBase64 = str;
        }

        public boolean isSuccess() {
            return this.code == 0 && !TextUtils.isEmpty(this.calibParamsBase64);
        }
    }

    public static final class HeightAdjustResult {
        public final String calibParamsBase64;
        public final int code;
        public final double heightStdev;
        public final LibExcavator.Tool tool;
        public final String toolParamsBase64;

        public HeightAdjustResult(int i, String str, String str2, LibExcavator.Tool tool) {
            this(i, str, str2, tool, Double.NaN);
        }

        public HeightAdjustResult(int i, String str, String str2, LibExcavator.Tool tool, double d) {
            this.code = i;
            this.calibParamsBase64 = str;
            this.toolParamsBase64 = str2;
            this.tool = tool;
            this.heightStdev = d;
        }

        public boolean isSuccess() {
            return this.code == 0 && !TextUtils.isEmpty(this.calibParamsBase64);
        }
    }

    public static Result makeToolParam(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new Result(-1, null);
        }
        logShovelMeasureParams(excavatorEntity);
        return makeToolParam(buildTool(excavatorEntity));
    }

    public static Result makeToolParam(ShovelEntity shovelEntity) {
        LibExcavator.Tool toolBuildTool;
        if (shovelEntity == null) {
            return new Result(-1, null);
        }
        logShovelMeasureParams(shovelEntity);
        if (shovelEntity.usesAutoGenerateParams()) {
            toolBuildTool = buildToolFromAuto(shovelEntity.getAutoGenerateParamsObj());
        } else if (shovelEntity.usesDistanceMeasure()) {
            toolBuildTool = buildToolFromDistance(shovelEntity.getAB(), shovelEntity.getAT(), shovelEntity.getNA(), shovelEntity.getNT(), shovelEntity.getLy() * 2.0d);
        } else {
            toolBuildTool = buildTool(shovelEntity.getG1(), shovelEntity.getG2(), shovelEntity.getG3(), shovelEntity.getLy(), shovelEntity.getAB());
        }
        return makeToolParam(toolBuildTool);
    }

    private static void logShovelMeasureParams(ShovelEntity shovelEntity) {
        if (shovelEntity == null) {
            return;
        }
        if (shovelEntity.usesAutoGenerateParams()) {
            ShovelAutoGenerateParams autoGenerateParamsObj = shovelEntity.getAutoGenerateParamsObj();
            CalibrateLogToFile.i("铲斗参数(智能生成)：AB=" + autoGenerateParamsObj.AB + " T0=(" + autoGenerateParamsObj.T0x + "," + autoGenerateParamsObj.T0y + "," + autoGenerateParamsObj.T0z + ") T1=(" + autoGenerateParamsObj.T1x + "," + autoGenerateParamsObj.T1y + "," + autoGenerateParamsObj.T1z + ") T2=(" + autoGenerateParamsObj.T2x + "," + autoGenerateParamsObj.T2y + "," + autoGenerateParamsObj.T2z + ") T3=(" + autoGenerateParamsObj.T3x + "," + autoGenerateParamsObj.T3y + "," + autoGenerateParamsObj.T3z + ")");
            return;
        }
        if (shovelEntity.usesDistanceMeasure()) {
            CalibrateLogToFile.i("铲斗参数(三角测量法)：NT=" + shovelEntity.getNT() + " AT=" + shovelEntity.getAT() + " NA=" + shovelEntity.getNA() + " LR=" + shovelEntity.getLR() + " AB=" + shovelEntity.getAB());
            return;
        }
        CalibrateLogToFile.i("铲斗参数(三点读数法)：G1=" + shovelEntity.getG1() + " G2=" + shovelEntity.getG2() + " G3=" + shovelEntity.getG3() + " LR=" + (shovelEntity.getLy() * 2.0d) + " AB=" + shovelEntity.getAB());
    }

    public static Result applyTool(String str, String str2) {
        logLibraryVersion();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return new Result(-1, null);
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            byte[] bArrDecode2 = Base64.decode(str2, 0);
            if (bArrDecode == null || bArrDecode.length == 0 || bArrDecode2 == null || bArrDecode2.length == 0) {
                return new Result(-1, null);
            }
            Excavator excavator = new Excavator();
            int iFromBinary = excavator.fromBinary(bArrDecode);
            if (iFromBinary != 0) {
                return new Result(iFromBinary, null);
            }
            LibExcavator.Tool tool = new LibExcavator.Tool();
            int i = Excavator.toolFromBinary(tool, bArrDecode2);
            if (i != 0) {
                return new Result(i, null);
            }
            int tool2 = excavator.setTool(tool);
            if (tool2 != 0) {
                return new Result(tool2, null);
            }
            return encodeBinary(new ExcavatorCalibHelper$$ExternalSyntheticLambda1(excavator));
        } catch (Exception unused) {
            return new Result(-1, null);
        }
    }

    private static Result makeToolParam(LibExcavator.Tool tool) {
        logLibraryVersion();
        if (tool == null) {
            return new Result(-1, null);
        }
        int i = Excavator.toolCheck(tool);
        if (i != 0) {
            return new Result(i, null);
        }
        return encodeToolBinary(tool);
    }

    private static Result encodeToolBinary(final LibExcavator.Tool tool) {
        if (tool == null) {
            return new Result(-1, null);
        }
        return encodeBinary(new BinaryWriter() { // from class: com.qianhe.yct.utils.ExcavatorCalibHelper$$ExternalSyntheticLambda0
            @Override // com.qianhe.yct.utils.ExcavatorCalibHelper.BinaryWriter
            public final int write(byte[] bArr) {
                return Excavator.toolToBinary(tool, bArr);
            }
        });
    }

    public static void symmetrizeRightToothFromLeft(LibExcavator.Tool tool) {
        LibExcavator.Point[] pointArr;
        LibExcavator.Point point;
        LibExcavator.Point point2;
        if (tool == null || (pointArr = tool.TT) == null || pointArr.length < 2 || (point = pointArr[0]) == null || (point2 = pointArr[1]) == null) {
            return;
        }
        point2.x = point.x;
        point2.y = -point.y;
        point2.z = point.z;
    }

    private static Result makeToolParamAfterSymmetrize(LibExcavator.Tool tool) {
        symmetrizeRightToothFromLeft(tool);
        return makeToolParam(tool);
    }

    public static HeightAdjustResult adjustHeight(String str, int i, double[] dArr, double[] dArr2, List<FineTuneSample> list) {
        double dRoundElev;
        Excavator excavator;
        double dRoundElev2;
        double dRoundElev3;
        LibExcavator.Sample[] sampleArr;
        double d;
        String str2;
        LibExcavator.Tool tool;
        logLibraryVersion();
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return new HeightAdjustResult(-1, null, null, null);
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode == null || bArrDecode.length == 0) {
                return new HeightAdjustResult(-1, null, null, null);
            }
            if (list.size() > 16) {
                return new HeightAdjustResult(-1, null, null, null);
            }
            Excavator excavator2 = new Excavator();
            int iFromBinary = excavator2.fromBinary(bArrDecode);
            if (iFromBinary != 0) {
                return new HeightAdjustResult(iFromBinary, null, null, null);
            }
            LibExcavator.Sample[] sampleArrSamples = Excavator.samples(list.size());
            if (dArr == null || dArr.length < 3) {
                dRoundElev = 0.0d;
                excavator = excavator2;
                dRoundElev2 = 0.0d;
                dRoundElev3 = 0.0d;
            } else {
                dRoundElev = PointLibCoordUtils.roundElev(dArr[0]);
                dRoundElev3 = PointLibCoordUtils.roundElev(dArr[1]);
                excavator = excavator2;
                dRoundElev2 = PointLibCoordUtils.roundElev(dArr[2]);
            }
            for (int i2 = 0; i2 < list.size(); i2++) {
                normalizeFineTuneSample(list.get(i2));
                fillSample(sampleArrSamples[i2], list.get(i2));
            }
            CalibrateLogToFile.i("微调参数：calibParamsBase64->" + str);
            CalibrateLogToFile.i("微调参数：flags->" + i);
            if (dArr2 != null && dArr2.length >= 3) {
                sampleArr = sampleArrSamples;
                d = dRoundElev;
                CalibrateLogToFile.i("微调参数：heightLlh(lat,lon,elev)->(" + PointLibCoordUtils.roundLonLat(dArr2[0]) + "," + PointLibCoordUtils.roundLonLat(dArr2[1]) + "," + PointLibCoordUtils.roundElev(dArr2[2]) + ")");
            } else {
                sampleArr = sampleArrSamples;
                d = dRoundElev;
                CalibrateLogToFile.i("微调参数：heightLlh->无效");
            }
            CalibrateLogToFile.i("微调参数：heightNed(n,e,d)->(" + d + "," + dRoundElev3 + "," + dRoundElev2 + ")");
            LibExcavator.Sample[] sampleArr2 = sampleArr;
            for (int i3 = 0; i3 < sampleArr2.length; i3++) {
                LibExcavator.Sample sample = sampleArr2[i3];
                FineTuneSample fineTuneSample = list.get(i3);
                CalibrateLogToFile.i("微调参数：nativeSample[" + i3 + "]->phase_to_hang=" + sample.phase_to_hang + ", phase_center=(" + sample.phase_center.x + "," + sample.phase_center.y + "," + sample.phase_center.z + "), device_rpy=(" + fineTuneSample.deviceRoll + "," + fineTuneSample.devicePitch + "," + fineTuneSample.deviceHeading + "), world_from_device(qx,qy,qz)=(" + sample.world_from_device.x + "," + sample.world_from_device.y + "," + sample.world_from_device.z + "), sensor_rpy=(" + fineTuneSample.sensorRoll + "," + fineTuneSample.sensorPitch + "," + fineTuneSample.sensorHeading + "), world_from_sensor(qx,qy,qz)=(" + sample.world_from_sensor.x + "," + sample.world_from_sensor.y + "," + sample.world_from_sensor.z + "), world_from_sensor_valid=" + sample.world_from_sensor_valid + ", lat=" + fineTuneSample.lat + ", lon=" + fineTuneSample.lon + ", elev=" + fineTuneSample.elev);
            }
            int iAdjustHeight = excavator.adjustHeight(i, dRoundElev2, sampleArr2);
            double d2 = dRoundElev2;
            Excavator excavator3 = excavator;
            logAfterAdjustHeight("微调", i, d2, sampleArr2, iAdjustHeight, excavator3);
            if (iAdjustHeight != 0) {
                return new HeightAdjustResult(iAdjustHeight, null, null, null);
            }
            double heightStdev = excavator3.getHeightStdev(i, d2, sampleArr2);
            logAfterGetHeightStdev("微调", i, d2, sampleArr2, heightStdev);
            Result resultEncodeBinary = encodeBinary(new ExcavatorCalibHelper$$ExternalSyntheticLambda1(excavator3));
            if (!resultEncodeBinary.isSuccess()) {
                return new HeightAdjustResult(resultEncodeBinary.code, null, null, null);
            }
            if (shouldExtractTool(i)) {
                LibExcavator.Tool tool2 = excavator3.getTool();
                Result resultMakeToolParamAfterSymmetrize = makeToolParamAfterSymmetrize(tool2);
                if (resultMakeToolParamAfterSymmetrize.isSuccess()) {
                    tool = tool2;
                    str2 = resultMakeToolParamAfterSymmetrize.calibParamsBase64;
                } else {
                    tool = tool2;
                    str2 = null;
                }
            } else {
                str2 = null;
                tool = null;
            }
            return new HeightAdjustResult(0, resultEncodeBinary.calibParamsBase64, str2, tool, heightStdev);
        } catch (Exception unused) {
            return new HeightAdjustResult(-1, null, null, null);
        }
    }

    public static double getHeightStdevBeforeAdjust(String str, List<FineTuneSample> list) {
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            try {
                byte[] bArrDecode = Base64.decode(str, 0);
                if (bArrDecode != null && bArrDecode.length != 0) {
                    Excavator excavator = new Excavator();
                    if (excavator.fromBinary(bArrDecode) != 0) {
                        return Double.NaN;
                    }
                    LibExcavator.Sample[] nativeSamples = toNativeSamples(list);
                    double heightStdev = excavator.getHeightStdev(0, 0.0d, nativeSamples);
                    logAfterGetHeightStdev("微调-stdevBefore", 0, 0.0d, nativeSamples, heightStdev);
                    return heightStdev;
                }
            } catch (Exception unused) {
            }
        }
        return Double.NaN;
    }

    public static PreciseHabAdjustResult adjustPreciseHabVertical(String str, FineTuneSample fineTuneSample, List<FineTuneSample> list, List<FineTuneSample> list2, List<FineTuneSample> list3, double[] dArr, double[] dArr2) {
        char c;
        logLibraryVersion();
        if (!TextUtils.isEmpty(str) && fineTuneSample != null && list != null) {
            int i = 5;
            if (list.size() >= 5 && list2 != null && list2.size() >= 3 && list3 != null && list3.size() >= 3) {
                try {
                    byte[] bArrDecode = Base64.decode(str, 0);
                    if (bArrDecode == null || bArrDecode.length == 0) {
                        return PreciseHabAdjustResult.fail(-1);
                    }
                    Excavator excavator = new Excavator();
                    int iFromBinary = excavator.fromBinary(bArrDecode);
                    if (iFromBinary != 0) {
                        return PreciseHabAdjustResult.fail(iFromBinary);
                    }
                    int i2 = 1;
                    int i3 = (dArr2 == null || dArr2.length < 3) ? 0 : 1;
                    double dRoundElev = (dArr == null || dArr.length < 3) ? 0.0d : PointLibCoordUtils.roundElev(dArr[2]);
                    if (i3 != 0) {
                        c = 0;
                        CalibrateLogToFile.i("精准校准参数：heightLlh(lat,lon,elev)->(" + PointLibCoordUtils.roundLonLat(dArr2[0]) + "," + PointLibCoordUtils.roundLonLat(dArr2[1]) + "," + PointLibCoordUtils.roundElev(dArr2[2]) + ")，heightNed.down->" + dRoundElev + "，heightValid=true");
                    } else {
                        c = 0;
                        CalibrateLogToFile.i("精准校准参数：heightLlh->无效，heightValid=false");
                    }
                    LibExcavator.Sample[] nativeSamples = toNativeSamples(list);
                    double heightStdev = excavator.getHeightStdev(i3, dRoundElev, nativeSamples);
                    logAfterGetHeightStdev("精准校准-stdevOld", i3, dRoundElev, nativeSamples, heightStdev);
                    LibExcavator.Sample sample = Excavator.samples(1)[c];
                    normalizeFineTuneSample(fineTuneSample);
                    fillSample(sample, fineTuneSample);
                    LibExcavator.Sample[] nativeSamples2 = toNativeSamples(list2);
                    LibExcavator.Sample[] nativeSamples3 = toNativeSamples(list3);
                    int i4 = i3 | 16;
                    int i5 = i3 | 32;
                    double d = Double.NaN;
                    double d2 = Double.NaN;
                    while (i2 <= i) {
                        String str2 = "精准校准[" + i2 + InternalZipConstants.ZIP_FILE_SEPARATOR + i + "]";
                        int iAdjustHABVertical = excavator.adjustHABVertical(sample);
                        StringBuilder sb = new StringBuilder();
                        sb.append(str2);
                        sb.append("：adjustHABVertical");
                        sb.append("\tcode=");
                        sb.append(iAdjustHABVertical);
                        appendNativeSample(sb, "sample", sample);
                        CalibrateLogToFile.i(sb.toString());
                        if (iAdjustHABVertical != 0) {
                            return PreciseHabAdjustResult.fail(iAdjustHABVertical);
                        }
                        int iAdjustHeight = excavator.adjustHeight(i4, dRoundElev, nativeSamples2);
                        LibExcavator.Sample[] sampleArr = nativeSamples2;
                        int i6 = i4;
                        Excavator excavator2 = excavator;
                        logAfterAdjustHeight(str2 + "-TOOL_ROTATE", i6, dRoundElev, sampleArr, iAdjustHeight, excavator2);
                        if (iAdjustHeight != 0) {
                            return PreciseHabAdjustResult.fail(iAdjustHeight);
                        }
                        double heightStdev2 = excavator2.getHeightStdev(i3, dRoundElev, nativeSamples);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str2);
                        LibExcavator.Sample sample2 = sample;
                        sb2.append("-stdevAfterRotate");
                        double d3 = dRoundElev;
                        logAfterGetHeightStdev(sb2.toString(), i3, d3, nativeSamples, heightStdev2);
                        d = heightStdev2;
                        int iAdjustHeight2 = excavator2.adjustHeight(i5, dRoundElev, nativeSamples3);
                        LibExcavator.Sample[] sampleArr2 = nativeSamples3;
                        int i7 = i5;
                        logAfterAdjustHeight(str2 + "-HA", i7, d3, sampleArr2, iAdjustHeight2, excavator2);
                        if (iAdjustHeight2 != 0) {
                            return PreciseHabAdjustResult.fail(iAdjustHeight2);
                        }
                        double heightStdev3 = excavator2.getHeightStdev(i3, dRoundElev, nativeSamples);
                        logAfterGetHeightStdev(str2 + "-stdevAfterHa", i3, dRoundElev, nativeSamples, heightStdev3);
                        d2 = heightStdev3;
                        i2++;
                        excavator = excavator2;
                        i5 = i7;
                        nativeSamples2 = sampleArr;
                        i4 = i6;
                        i = 5;
                        nativeSamples3 = sampleArr2;
                        sample = sample2;
                    }
                    Excavator excavator3 = excavator;
                    LibExcavator.Tool tool = excavator3.getTool();
                    Result resultMakeToolParamAfterSymmetrize = makeToolParamAfterSymmetrize(tool);
                    if (!resultMakeToolParamAfterSymmetrize.isSuccess()) {
                        int i8 = resultMakeToolParamAfterSymmetrize.code;
                        return PreciseHabAdjustResult.fail(i8 != 0 ? i8 : -1);
                    }
                    Result resultEncodeBinary = encodeBinary(new ExcavatorCalibHelper$$ExternalSyntheticLambda1(excavator3));
                    if (!resultEncodeBinary.isSuccess()) {
                        return PreciseHabAdjustResult.fail(resultEncodeBinary.code);
                    }
                    return new PreciseHabAdjustResult(0, heightStdev, d, d2, resultEncodeBinary.calibParamsBase64, resultMakeToolParamAfterSymmetrize.calibParamsBase64, tool);
                } catch (Exception unused) {
                    return PreciseHabAdjustResult.fail(-1);
                }
            }
        }
        return PreciseHabAdjustResult.fail(-1);
    }

    public static final class PreciseHabAdjustResult {
        public final String calibParamsBase64;
        public final int code;
        public final double stdevAfterHa;
        public final double stdevNew;
        public final double stdevOld;
        public final LibExcavator.Tool tool;
        public final String toolParamsBase64;

        public PreciseHabAdjustResult(int i, double d, double d2, double d3, String str, String str2, LibExcavator.Tool tool) {
            this.code = i;
            this.stdevOld = d;
            this.stdevNew = d2;
            this.stdevAfterHa = d3;
            this.calibParamsBase64 = str;
            this.toolParamsBase64 = str2;
            this.tool = tool;
        }

        public static PreciseHabAdjustResult fail(int i) {
            return new PreciseHabAdjustResult(i, Double.NaN, Double.NaN, Double.NaN, null, null, null);
        }

        public boolean isSuccess() {
            return (this.code != 0 || TextUtils.isEmpty(this.calibParamsBase64) || TextUtils.isEmpty(this.toolParamsBase64) || this.tool == null) ? false : true;
        }
    }

    private static LibExcavator.Sample[] toNativeSamples(List<FineTuneSample> list) {
        LibExcavator.Sample[] sampleArrSamples = Excavator.samples(list.size());
        for (int i = 0; i < list.size(); i++) {
            normalizeFineTuneSample(list.get(i));
            fillSample(sampleArrSamples[i], list.get(i));
        }
        return sampleArrSamples;
    }

    private static void logAfterAdjustHeight(String str, int i, double d, LibExcavator.Sample[] sampleArr, int i2, Excavator excavator) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("：adjustHeight");
        sb.append("\tflags=");
        sb.append(i);
        sb.append("\theight=");
        sb.append(d);
        sb.append("\tcode=");
        sb.append(i2);
        appendNativeSamples(sb, sampleArr);
        CalibrateLogToFile.i(sb.toString());
    }

    private static void logAfterGetHeightStdev(String str, int i, double d, LibExcavator.Sample[] sampleArr, double d2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("：getHeightStdev");
        sb.append("\tflags=");
        sb.append(i);
        sb.append("\theight=");
        sb.append(d);
        sb.append("\tstdev=");
        sb.append(d2);
        appendNativeSamples(sb, sampleArr);
        CalibrateLogToFile.i(sb.toString());
    }

    private static void appendNativeSamples(StringBuilder sb, LibExcavator.Sample[] sampleArr) {
        if (sampleArr == null) {
            sb.append("\nsamples->null");
            return;
        }
        sb.append("\tsampleCount->");
        sb.append(sampleArr.length);
        for (int i = 0; i < sampleArr.length; i++) {
            appendNativeSample(sb, "sample[" + i + "]", sampleArr[i]);
        }
    }

    private static void appendNativeSample(StringBuilder sb, String str, LibExcavator.Sample sample) {
        if (sample == null) {
            sb.append("\n");
            sb.append(str);
            sb.append("->null");
            return;
        }
        sb.append("\n");
        sb.append(str);
        sb.append("->");
        sb.append("phase_to_hang=");
        sb.append(sample.phase_to_hang);
        sb.append(", phase_center=(");
        sb.append(sample.phase_center.x);
        sb.append(",");
        sb.append(sample.phase_center.y);
        sb.append(",");
        sb.append(sample.phase_center.z);
        sb.append(")");
        sb.append(", phase_center_stde=(");
        sb.append(sample.phase_center_stde.x);
        sb.append(",");
        sb.append(sample.phase_center_stde.y);
        sb.append(",");
        sb.append(sample.phase_center_stde.z);
        sb.append(")");
        sb.append(", world_from_device(qx,qy,qz)=(");
        sb.append(sample.world_from_device.x);
        sb.append(",");
        sb.append(sample.world_from_device.y);
        sb.append(",");
        sb.append(sample.world_from_device.z);
        sb.append(")");
        sb.append(", world_from_device_stde=(");
        sb.append(sample.world_from_device_stde.x);
        sb.append(",");
        sb.append(sample.world_from_device_stde.y);
        sb.append(",");
        sb.append(sample.world_from_device_stde.z);
        sb.append(")");
        sb.append(", world_from_sensor(qx,qy,qz)=(");
        sb.append(sample.world_from_sensor.x);
        sb.append(",");
        sb.append(sample.world_from_sensor.y);
        sb.append(",");
        sb.append(sample.world_from_sensor.z);
        sb.append(")");
        sb.append(", world_from_sensor_valid=");
        sb.append(sample.world_from_sensor_valid);
    }

    public static ShovelAutoGenerateParams toolToAutoGenerateParams(LibExcavator.Tool tool) {
        ShovelAutoGenerateParams shovelAutoGenerateParams = new ShovelAutoGenerateParams();
        if (tool != null) {
            shovelAutoGenerateParams.AB = tool.AB;
            LibExcavator.Point[] pointArr = tool.TT;
            if (pointArr != null) {
                if (pointArr.length > 0) {
                    LibExcavator.Point point = pointArr[0];
                    shovelAutoGenerateParams.T0x = point.x;
                    shovelAutoGenerateParams.T0y = point.y;
                    shovelAutoGenerateParams.T0z = point.z;
                }
                if (pointArr.length > 1) {
                    LibExcavator.Point point2 = pointArr[1];
                    shovelAutoGenerateParams.T1x = point2.x;
                    shovelAutoGenerateParams.T1y = point2.y;
                    shovelAutoGenerateParams.T1z = point2.z;
                }
                if (pointArr.length > 2) {
                    LibExcavator.Point point3 = pointArr[2];
                    shovelAutoGenerateParams.T2x = point3.x;
                    shovelAutoGenerateParams.T2y = point3.y;
                    shovelAutoGenerateParams.T2z = point3.z;
                }
                if (pointArr.length > 3) {
                    LibExcavator.Point point4 = pointArr[3];
                    shovelAutoGenerateParams.T3x = point4.x;
                    shovelAutoGenerateParams.T3y = point4.y;
                    shovelAutoGenerateParams.T3z = point4.z;
                }
            }
        }
        return shovelAutoGenerateParams;
    }

    public static void normalizeFineTuneSample(FineTuneSample fineTuneSample) {
        if (fineTuneSample == null) {
            return;
        }
        fineTuneSample.lat = PointLibCoordUtils.roundLonLat(fineTuneSample.lat);
        fineTuneSample.lon = PointLibCoordUtils.roundLonLat(fineTuneSample.lon);
        fineTuneSample.elev = PointLibCoordUtils.roundElev(fineTuneSample.elev);
        fineTuneSample.phaseToHang = PointLibCoordUtils.roundElev(fineTuneSample.phaseToHang);
        fineTuneSample.north = PointLibCoordUtils.roundElev(fineTuneSample.north);
        fineTuneSample.east = PointLibCoordUtils.roundElev(fineTuneSample.east);
        fineTuneSample.down = PointLibCoordUtils.roundElev(fineTuneSample.down);
        fineTuneSample.deviceRoll = PointLibCoordUtils.roundElev(fineTuneSample.deviceRoll);
        fineTuneSample.devicePitch = PointLibCoordUtils.roundElev(fineTuneSample.devicePitch);
        fineTuneSample.deviceHeading = PointLibCoordUtils.roundElev(fineTuneSample.deviceHeading);
        fineTuneSample.sensorRoll = PointLibCoordUtils.roundElev(fineTuneSample.sensorRoll);
        fineTuneSample.sensorPitch = PointLibCoordUtils.roundElev(fineTuneSample.sensorPitch);
        fineTuneSample.sensorHeading = PointLibCoordUtils.roundElev(fineTuneSample.sensorHeading);
    }

    public static void normalizeFineTuneSamples(List<FineTuneSample> list) {
        if (list == null) {
            return;
        }
        Iterator<FineTuneSample> it = list.iterator();
        while (it.hasNext()) {
            normalizeFineTuneSample(it.next());
        }
    }

    private static void fillSample(LibExcavator.Sample sample, FineTuneSample fineTuneSample) {
        if (sample == null || fineTuneSample == null) {
            return;
        }
        sample.phase_to_hang = fineTuneSample.phaseToHang;
        LibExcavator.Point point = sample.phase_center;
        point.x = fineTuneSample.north;
        point.y = fineTuneSample.east;
        point.z = fineTuneSample.down;
        GeoQuaternion.fillPointFromAngleZyx(sample.world_from_device, fineTuneSample.deviceRoll, fineTuneSample.devicePitch, fineTuneSample.deviceHeading);
        GeoQuaternion.fillPointFromAngleZyx(sample.world_from_sensor, fineTuneSample.sensorRoll, fineTuneSample.sensorPitch, fineTuneSample.sensorHeading);
        sample.world_from_sensor_valid = fineTuneSample.sensorValid ? 1 : 0;
    }

    public static Result calibrate(ExcavatorEntity excavatorEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        return calibrate(excavatorEntity, insNavi, sensorInfoEvent, true);
    }

    public static Result calibrate(ExcavatorEntity excavatorEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent, boolean z) {
        if (excavatorEntity == null || insNavi == null) {
            return new Result(-1, null);
        }
        logShovelMeasureParams(excavatorEntity);
        if (z) {
            captureSoInputs(excavatorEntity, insNavi, sensorInfoEvent);
        }
        Calibration calibrationBuildCalibration = buildCalibration(excavatorEntity, insNavi, sensorInfoEvent);
        if (calibrationBuildCalibration == null) {
            return new Result(-1, null);
        }
        Excavator excavator = new Excavator();
        logLibraryVersion(excavator.getVersion());
        int iApply = calibrationBuildCalibration.apply(excavator);
        if (iApply != 0) {
            return new Result(iApply, null);
        }
        return stampExistingToolParam(excavatorEntity, encodeBinary(new ExcavatorCalibHelper$$ExternalSyntheticLambda1(excavator)));
    }

    private static Result stampExistingToolParam(ExcavatorEntity excavatorEntity, Result result) {
        ShovelEntity shovelEntity;
        if (excavatorEntity != null && (shovelEntity = excavatorEntity.shovelEntity) != null && !TextUtils.isEmpty(shovelEntity.param) && result != null && result.isSuccess()) {
            Result resultApplyTool = applyTool(result.calibParamsBase64, excavatorEntity.shovelEntity.param);
            if (resultApplyTool.isSuccess()) {
                return resultApplyTool;
            }
        }
        return result;
    }

    public static Result calibrateFromSavedInputs(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new Result(-1, null);
        }
        excavatorEntity.loadCalibSoInputsFromJson();
        InsNavi insNavi = new InsNavi();
        insNavi.rollDegrees = excavatorEntity.deviceRoll;
        insNavi.pitchDegrees = excavatorEntity.devicePitch;
        insNavi.headingDegrees = excavatorEntity.deviceHeading;
        return calibrate(excavatorEntity, insNavi, new SensorInfoEvent(0, excavatorEntity.sensorRoll, excavatorEntity.sensorPitch, excavatorEntity.sensorHeading), false);
    }

    private static void captureSoInputs(ExcavatorEntity excavatorEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        if (excavatorEntity == null || excavatorEntity.usesAutoGenerateParams()) {
            return;
        }
        if (!excavatorEntity.usesCalibrationMode21()) {
            if (insNavi != null) {
                excavatorEntity.deviceRoll = insNavi.rollDegrees;
                excavatorEntity.devicePitch = insNavi.pitchDegrees;
                excavatorEntity.deviceHeading = insNavi.headingDegrees;
            }
            if (sensorInfoEvent != null && excavatorEntity.mode != ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
                excavatorEntity.sensorRoll = sensorInfoEvent.rollAngle;
                excavatorEntity.sensorPitch = sensorInfoEvent.pitchAngle;
                excavatorEntity.sensorHeading = sensorInfoEvent.headingAngle;
            }
        }
        excavatorEntity.markCalibSoInputsCaptured();
    }

    private static void logShovelMeasureParams(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        if (excavatorEntity.usesAutoGenerateParams()) {
            ShovelAutoGenerateParams autoGenerateParamsObj = excavatorEntity.getAutoGenerateParamsObj();
            CalibrateLogToFile.i("铲斗参数(智能生成)：AB=" + autoGenerateParamsObj.AB + " T0=(" + autoGenerateParamsObj.T0x + "," + autoGenerateParamsObj.T0y + "," + autoGenerateParamsObj.T0z + ") T1=(" + autoGenerateParamsObj.T1x + "," + autoGenerateParamsObj.T1y + "," + autoGenerateParamsObj.T1z + ") T2=(" + autoGenerateParamsObj.T2x + "," + autoGenerateParamsObj.T2y + "," + autoGenerateParamsObj.T2z + ") T3=(" + autoGenerateParamsObj.T3x + "," + autoGenerateParamsObj.T3y + "," + autoGenerateParamsObj.T3z + ")");
            return;
        }
        int i = excavatorEntity.mode;
        ExcavatorCalibrateModeEnum excavatorCalibrateModeEnum = ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT;
        if (i == excavatorCalibrateModeEnum.getMode()) {
            CalibrateLogToFile.i("模式1参数：AH=" + excavatorEntity.deviceHeight + " AR=" + excavatorEntity.rigthDist + " AL=" + excavatorEntity.leftDist + " LR=" + excavatorEntity.spanDist);
            return;
        }
        if (excavatorEntity.usesDistanceMeasure()) {
            CalibrateLogToFile.i("铲斗参数(三角测量法)：NT=" + excavatorEntity.getNT() + " AT=" + excavatorEntity.getAT() + " NA=" + excavatorEntity.getNA() + " LR=" + excavatorEntity.getLR() + " AB=" + excavatorEntity.getAB());
            return;
        }
        if (excavatorEntity.mode != excavatorCalibrateModeEnum.getMode()) {
            CalibrateLogToFile.i("铲斗参数(三点读数法)：G1=" + excavatorEntity.getG1() + " G2=" + excavatorEntity.getG2() + " G3=" + excavatorEntity.getG3() + " LR=" + (excavatorEntity.getLy() * 2.0d) + " AB=" + excavatorEntity.getAB());
        }
    }

    static LibExcavator.Tool buildTool(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity != null) {
            if (excavatorEntity.usesDistanceMeasure()) {
                return buildToolFromDistance(excavatorEntity.getAB(), excavatorEntity.getAT(), excavatorEntity.getNA(), excavatorEntity.getNT(), excavatorEntity.getLy() * 2.0d);
            }
            return buildTool(excavatorEntity.getG1(), excavatorEntity.getG2(), excavatorEntity.getG3(), excavatorEntity.getLy(), excavatorEntity.getAB());
        }
        return new LibExcavator.Tool();
    }

    static LibExcavator.Tool resolveTool(ExcavatorEntity excavatorEntity) {
        ShovelEntity shovelEntity;
        LibExcavator.Tool toolFromParam;
        return (excavatorEntity == null || (shovelEntity = excavatorEntity.shovelEntity) == null || TextUtils.isEmpty(shovelEntity.param) || (toolFromParam = parseToolFromParam(excavatorEntity.shovelEntity.param)) == null) ? buildTool(excavatorEntity) : toolFromParam;
    }

    static LibExcavator.Tool buildTool(double d, double d2, double d3, double d4, double d5) {
        LibExcavator.Tool tool = new LibExcavator.Tool();
        tool.AB = d5;
        double d6 = -((d - d2) + 0.055d);
        double d7 = -d4;
        double d8 = ((d2 - 0.1d) + 0.055d) - d3;
        LibExcavator.Point[] pointArr = tool.TT;
        LibExcavator.Point point = pointArr[0];
        point.x = d6;
        point.y = d7;
        point.z = d8;
        LibExcavator.Point point2 = pointArr[1];
        point2.x = d6;
        point2.y = -d7;
        point2.z = d8;
        return tool;
    }

    static LibExcavator.Tool buildToolFromDistance(double d, double d2, double d3, double d4, double d5) {
        LibExcavator.Tool tool = new LibExcavator.Tool();
        Excavator.toolFromDistance(tool, d, d2, d3, d4, d5);
        return tool;
    }

    static LibExcavator.Tool buildToolFromAuto(ShovelAutoGenerateParams shovelAutoGenerateParams) {
        LibExcavator.Tool tool = new LibExcavator.Tool();
        if (shovelAutoGenerateParams == null) {
            return tool;
        }
        tool.AB = shovelAutoGenerateParams.AB;
        setTooth(tool, 0, shovelAutoGenerateParams.T0x, shovelAutoGenerateParams.T0y, shovelAutoGenerateParams.T0z);
        setTooth(tool, 1, shovelAutoGenerateParams.T1x, shovelAutoGenerateParams.T1y, shovelAutoGenerateParams.T1z);
        setTooth(tool, 2, shovelAutoGenerateParams.T2x, shovelAutoGenerateParams.T2y, shovelAutoGenerateParams.T2z);
        setTooth(tool, 3, shovelAutoGenerateParams.T3x, shovelAutoGenerateParams.T3y, shovelAutoGenerateParams.T3z);
        return tool;
    }

    private static void setTooth(LibExcavator.Tool tool, int i, double d, double d2, double d3) {
        LibExcavator.Point[] pointArr;
        if (tool == null || (pointArr = tool.TT) == null || i < 0 || i >= pointArr.length) {
            return;
        }
        LibExcavator.Point point = pointArr[i];
        point.x = d;
        point.y = d2;
        point.z = d3;
    }

    private static Calibration buildCalibration(ExcavatorEntity excavatorEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        if (excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            CalibrationMode1 calibrationMode1 = new CalibrationMode1();
            calibrationMode1.deviceRoll = insNavi.rollDegrees;
            calibrationMode1.devicePitch = insNavi.pitchDegrees;
            calibrationMode1.deviceHeading = insNavi.headingDegrees;
            calibrationMode1.GL = excavatorEntity.leftDist;
            calibrationMode1.GR = excavatorEntity.rigthDist;
            calibrationMode1.LR = excavatorEntity.spanDist;
            calibrationMode1.HG = excavatorEntity.deviceHeight;
            return calibrationMode1;
        }
        if (excavatorEntity.mode != ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            if (excavatorEntity.mode != ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
                return null;
            }
            CalibrationMode3 calibrationMode3 = new CalibrationMode3();
            fillDeviceAttitude(calibrationMode3, insNavi);
            fillLinkageAndTool(calibrationMode3, excavatorEntity);
            return calibrationMode3;
        }
        if (sensorInfoEvent == null) {
            return null;
        }
        if (excavatorEntity.usesCalibrationMode21()) {
            return buildCalibrationMode21(excavatorEntity);
        }
        CalibrationMode2 calibrationMode2 = new CalibrationMode2();
        fillDeviceAttitude(calibrationMode2, insNavi);
        calibrationMode2.sensorRoll = sensorInfoEvent.rollAngle;
        calibrationMode2.sensorPitch = sensorInfoEvent.pitchAngle;
        calibrationMode2.sensorHeading = sensorInfoEvent.headingAngle;
        fillLinkageAndTool(calibrationMode2, excavatorEntity);
        return calibrationMode2;
    }

    public static int getMode(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode != null && bArrDecode.length != 0) {
                Excavator excavator = new Excavator();
                if (excavator.fromBinary(bArrDecode) != 0) {
                    return 0;
                }
                return excavator.getMode();
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public static int parseParamsType(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode != null && bArrDecode.length > 0) {
                return bArrDecode[0] & 255;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public static Result existingToolParamFromExcavator(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return new Result(-1, null);
        }
        return extractToolParamFromCalibParams(excavatorEntity.calibParams);
    }

    public static Result extractToolParamFromCalibParams(String str) {
        LibExcavator.Tool toolFromCalibParams = parseToolFromCalibParams(str);
        if (toolFromCalibParams == null) {
            return new Result(-1, null);
        }
        return encodeToolBinary(toolFromCalibParams);
    }

    public static LibExcavator.Tool parseToolFromParam(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode != null && bArrDecode.length != 0) {
                LibExcavator.Tool tool = new LibExcavator.Tool();
                if (Excavator.toolFromBinary(tool, bArrDecode) == 0) {
                    return tool;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static LibExcavator.Tool parseToolFromCalibParams(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode != null && bArrDecode.length != 0) {
                Excavator excavator = new Excavator();
                if (excavator.fromBinary(bArrDecode) != 0) {
                    return null;
                }
                return excavator.getTool();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static ShovelAutoGenerateParams knownBucketParams(LibExcavator.Tool tool) {
        LibExcavator.Point point;
        LibExcavator.Point point2;
        ShovelAutoGenerateParams shovelAutoGenerateParams = new ShovelAutoGenerateParams();
        if (tool != null) {
            shovelAutoGenerateParams.AB = tool.AB;
            LibExcavator.Point[] pointArr = tool.TT;
            if (pointArr != null) {
                if (pointArr.length > 0 && (point2 = pointArr[0]) != null) {
                    shovelAutoGenerateParams.T0x = point2.x;
                    shovelAutoGenerateParams.T0y = point2.y;
                    shovelAutoGenerateParams.T0z = point2.z;
                }
                if (pointArr.length > 1 && (point = pointArr[1]) != null) {
                    shovelAutoGenerateParams.T1x = point.x;
                    shovelAutoGenerateParams.T1y = point.y;
                    shovelAutoGenerateParams.T1z = point.z;
                }
            }
        }
        return shovelAutoGenerateParams;
    }

    public static String buildSetToolCmd(LibExcavator.Tool tool) {
        if (tool == null) {
            return "LOCAL,setTool";
        }
        StringBuilder sb = new StringBuilder("LOCAL,setTool,AB=");
        sb.append(tool.AB);
        LibExcavator.Point[] pointArr = tool.TT;
        if (pointArr != null && pointArr.length > 0 && pointArr[0] != null) {
            sb.append(",T0=Point3D(");
            sb.append(tool.TT[0].x);
            sb.append(", ");
            sb.append(tool.TT[0].y);
            sb.append(", ");
            sb.append(tool.TT[0].z);
            sb.append(")");
        }
        LibExcavator.Point[] pointArr2 = tool.TT;
        if (pointArr2 != null && pointArr2.length > 1 && pointArr2[1] != null) {
            sb.append(",T1=Point3D(");
            sb.append(tool.TT[1].x);
            sb.append(", ");
            sb.append(tool.TT[1].y);
            sb.append(", ");
            sb.append(tool.TT[1].z);
            sb.append(")");
        }
        return sb.toString();
    }

    public static JsonObject buildToolInputJson(ExcavatorEntity excavatorEntity) {
        LibExcavator.Tool toolResolveTool = resolveTool(excavatorEntity);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("ab", Double.valueOf(toolResolveTool != null ? toolResolveTool.AB : 0.0d));
        jsonObject.add("t0", toothToJsonArray(toolResolveTool, 0));
        jsonObject.add("t1", toothToJsonArray(toolResolveTool, 1));
        return jsonObject;
    }

    public static JsonArray toothToJsonArray(LibExcavator.Tool tool, int i) {
        LibExcavator.Point[] pointArr;
        LibExcavator.Point point;
        JsonArray jsonArray = new JsonArray();
        if (tool != null && (pointArr = tool.TT) != null && i >= 0 && i < pointArr.length && (point = pointArr[i]) != null) {
            jsonArray.add(Double.valueOf(point.x));
            jsonArray.add(Double.valueOf(tool.TT[i].y));
            jsonArray.add(Double.valueOf(tool.TT[i].z));
            return jsonArray;
        }
        jsonArray.add((Number) 0);
        jsonArray.add((Number) 0);
        jsonArray.add((Number) 0);
        return jsonArray;
    }

    public static double[][] filterReAttitudesExcludingDc(double[][] dArr, int i) {
        if (dArr == null || dArr.length == 0 || i < 0 || i >= dArr.length) {
            return dArr;
        }
        double[][] dArr2 = new double[dArr.length - 1][];
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            if (i3 != i) {
                dArr2[i2] = dArr[i3];
                i2++;
            }
        }
        return dArr2;
    }

    private static Calibration buildCalibrationMode21(ExcavatorEntity excavatorEntity) {
        CalibrationMode2_1 calibrationMode2_1 = new CalibrationMode2_1();
        calibrationMode2_1.phaseToHang = excavatorEntity.phaseToHang;
        calibrationMode2_1.HA = excavatorEntity.HA;
        calibrationMode2_1.Hy = excavatorEntity.pq;
        calibrationMode2_1.Dx = excavatorEntity.Dx;
        calibrationMode2_1.AD = excavatorEntity.AD;
        calibrationMode2_1.CD = excavatorEntity.CD;
        calibrationMode2_1.BC = excavatorEntity.BC;
        calibrationMode2_1.REDeviceAttitudes = filterReAttitudesExcludingDc(excavatorEntity.reDeviceAttitudes, 2);
        calibrationMode2_1.RESensorAttitudes = filterReAttitudesExcludingDc(excavatorEntity.reSensorAttitudes, 2);
        calibrationMode2_1.ADeviceRoll = excavatorEntity.aDeviceRoll;
        calibrationMode2_1.ADevicePitch = excavatorEntity.aDevicePitch;
        calibrationMode2_1.ADeviceHeading = excavatorEntity.aDeviceHeading;
        calibrationMode2_1.BDeviceRoll = excavatorEntity.bDeviceRoll;
        calibrationMode2_1.BDevicePitch = excavatorEntity.bDevicePitch;
        calibrationMode2_1.BDeviceHeading = excavatorEntity.bDeviceHeading;
        calibrationMode2_1.BSensorRoll = excavatorEntity.bSensorRoll;
        calibrationMode2_1.BSensorPitch = excavatorEntity.bSensorPitch;
        calibrationMode2_1.BSensorHeading = excavatorEntity.bSensorHeading;
        calibrationMode2_1.dcDeviceRoll = excavatorEntity.dcDeviceRoll;
        calibrationMode2_1.dcDevicePitch = excavatorEntity.dcDevicePitch;
        calibrationMode2_1.dcDeviceHeading = excavatorEntity.dcDeviceHeading;
        calibrationMode2_1.dcSensorRoll = excavatorEntity.dcSensorRoll;
        calibrationMode2_1.dcSensorPitch = excavatorEntity.dcSensorPitch;
        calibrationMode2_1.dcSensorHeading = excavatorEntity.dcSensorHeading;
        applyResolvedTool(calibrationMode2_1, excavatorEntity);
        return calibrationMode2_1;
    }

    private static void applyResolvedTool(CalibrationMode2_1 calibrationMode2_1, ExcavatorEntity excavatorEntity) {
        LibExcavator.Tool toolResolveTool = resolveTool(excavatorEntity);
        if (toolResolveTool == null) {
            return;
        }
        calibrationMode2_1.toolAB = toolResolveTool.AB;
        copyToolTeeth(calibrationMode2_1.toolTeeth, toolResolveTool);
    }

    private static void fillDeviceAttitude(CalibrationMode2 calibrationMode2, InsNavi insNavi) {
        calibrationMode2.deviceRoll = insNavi.rollDegrees;
        calibrationMode2.devicePitch = insNavi.pitchDegrees;
        calibrationMode2.deviceHeading = insNavi.headingDegrees;
    }

    private static void fillDeviceAttitude(CalibrationMode3 calibrationMode3, InsNavi insNavi) {
        calibrationMode3.deviceRoll = insNavi.rollDegrees;
        calibrationMode3.devicePitch = insNavi.pitchDegrees;
        calibrationMode3.deviceHeading = insNavi.headingDegrees;
    }

    private static void fillLinkageAndTool(CalibrationMode2 calibrationMode2, ExcavatorEntity excavatorEntity) {
        calibrationMode2.HA = excavatorEntity.HA;
        calibrationMode2.Hy = excavatorEntity.pq;
        calibrationMode2.Ay = excavatorEntity.Ay;
        calibrationMode2.Ax = excavatorEntity.Ax;
        calibrationMode2.Dx = excavatorEntity.Dx;
        calibrationMode2.AD = excavatorEntity.AD;
        calibrationMode2.BD = excavatorEntity.BD;
        calibrationMode2.CD = excavatorEntity.CD;
        calibrationMode2.BC = excavatorEntity.BC;
        fillToolFields(calibrationMode2, excavatorEntity);
    }

    private static void fillLinkageAndTool(CalibrationMode3 calibrationMode3, ExcavatorEntity excavatorEntity) {
        calibrationMode3.HA = excavatorEntity.HA;
        calibrationMode3.Hy = excavatorEntity.pq;
        calibrationMode3.Ay = excavatorEntity.Ay;
        calibrationMode3.Ax = excavatorEntity.Ax;
        calibrationMode3.Dx = excavatorEntity.Dx;
        calibrationMode3.AD = excavatorEntity.AD;
        calibrationMode3.BD = excavatorEntity.BD;
        calibrationMode3.CD = excavatorEntity.CD;
        calibrationMode3.BC = excavatorEntity.BC;
        fillToolFields(calibrationMode3, excavatorEntity);
    }

    private static void fillToolFields(CalibrationMode2 calibrationMode2, ExcavatorEntity excavatorEntity) {
        LibExcavator.Tool toolResolveTool = resolveTool(excavatorEntity);
        if (toolResolveTool == null) {
            return;
        }
        calibrationMode2.toolAB = toolResolveTool.AB;
        copyToolTeeth(calibrationMode2.toolTeeth, toolResolveTool);
    }

    private static void fillToolFields(CalibrationMode3 calibrationMode3, ExcavatorEntity excavatorEntity) {
        LibExcavator.Tool toolResolveTool = resolveTool(excavatorEntity);
        if (toolResolveTool == null) {
            return;
        }
        calibrationMode3.toolAB = toolResolveTool.AB;
        copyToolTeeth(calibrationMode3.toolTeeth, toolResolveTool);
    }

    private static void copyToolTeeth(double[][] dArr, LibExcavator.Tool tool) {
        LibExcavator.Point[] pointArr;
        if (dArr == null || tool == null || (pointArr = tool.TT) == null) {
            return;
        }
        int iMin = Math.min(dArr.length, Math.min(4, pointArr.length));
        for (int i = 0; i < iMin; i++) {
            LibExcavator.Point point = tool.TT[i];
            if (point != null) {
                double[] dArr2 = dArr[i];
                dArr2[0] = point.x;
                dArr2[1] = point.y;
                dArr2[2] = point.z;
            }
        }
    }

    private static void logLibraryVersion() {
        logLibraryVersion(Excavator.libraryVersion());
    }

    private static void logLibraryVersion(String str) {
        if (!TextUtils.isEmpty(str)) {
            CalibrateLogToFile.setXexcavatorVersion(str);
        }
        if (str == null || str.equals(loggedVersion)) {
            return;
        }
        loggedVersion = str;
        CalibrateLogToFile.i("libexcavator 挖机校准库版本号：" + str);
    }

    private static Result encodeBinary(BinaryWriter binaryWriter) {
        byte[] bArr = new byte[128];
        int iWrite = binaryWriter.write(bArr);
        if (iWrite <= 0 || iWrite > 128) {
            return new Result(iWrite, null);
        }
        byte[] bArr2 = new byte[iWrite];
        System.arraycopy(bArr, 0, bArr2, 0, iWrite);
        return new Result(0, Base64.encodeToString(bArr2, 2));
    }

    public static void log(String str, String str2, GGAEntity gGAEntity, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        CalibrateLogToFile.i(str + "指令参数：" + str2);
        if (gGAEntity != null) {
            CalibrateLogToFile.i(str + "GGA：" + gGAEntity.ggaStr + "，经度：" + gGAEntity.longitude + "，纬度：" + gGAEntity.latitude + "，高程：" + gGAEntity.elevation);
        } else {
            CalibrateLogToFile.i(str + "GGA：null");
        }
        if (insNavi != null) {
            CalibrateLogToFile.i(str + "INS：横滚角=" + insNavi.rollDegrees + "，俯仰角=" + insNavi.pitchDegrees + "，航向角=" + insNavi.headingDegrees);
        } else {
            CalibrateLogToFile.i(str + "INS：null");
        }
        if (sensorInfoEvent != null) {
            CalibrateLogToFile.i(str + "传感器：横滚角=" + sensorInfoEvent.rollAngle + "，俯仰角=" + sensorInfoEvent.pitchAngle + "，航向角=" + sensorInfoEvent.headingAngle);
            return;
        }
        CalibrateLogToFile.i(str + "传感器：null");
    }
}

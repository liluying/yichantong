package com.qianhe.yct.utils;

import android.content.Context;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.coord.EngineeringEllipsoidProjDef;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;
import com.qianhe.yct.db.DatabaseManager;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.locationtech.proj4j.parser.Proj4Keyword;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class PointGroupExcelExporter {
    public static File export(Context context, File file, String str, List<PointlibEntity> list, double d) throws IOException {
        EngineeringEntity currentEngineering;
        if (file == null || !file.isDirectory()) {
            throw new IOException("invalid folder");
        }
        Context contextWrapContext = context != null ? LanguagePrefs.wrapContext(context) : null;
        if (contextWrapContext != null) {
            currentEngineering = DatabaseManager.getInstance(contextWrapContext).queryCurrentEngineering();
        } else {
            currentEngineering = GnssCoordConvertManager.getInstance().getCurrentEngineering();
        }
        String ellipsoid = formatEllipsoid(contextWrapContext, currentEngineering);
        String projectionParams = formatProjectionParams(contextWrapContext, currentEngineering);
        String transParam = formatTransParam(contextWrapContext, currentEngineering);
        String str2 = str == null ? "" : str;
        String coord = formatCoord(d);
        File fileUniqueFile = uniqueFile(file, sanitizeFileName(str) + ".csv");
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileUniqueFile), StandardCharsets.UTF_8));
        try {
            bufferedWriter.write(65279);
            bufferedWriter.write(buildHeader(contextWrapContext));
            bufferedWriter.write(10);
            if (list != null) {
                Iterator<PointlibEntity> it = list.iterator();
                while (it.hasNext()) {
                    bufferedWriter.write(buildRow(contextWrapContext, str2, it.next(), ellipsoid, projectionParams, transParam, coord));
                    bufferedWriter.write(10);
                }
            }
            bufferedWriter.close();
            return fileUniqueFile;
        } finally {
        }
    }

    static String sanitizeFileName(String str) {
        if (str == null) {
            return "point_group";
        }
        String strTrim = str.replaceAll("[\\\\/:*?\"<>|]", "_").trim();
        return (strTrim.isEmpty() || ".".equals(strTrim) || "..".equals(strTrim)) ? "point_group" : strTrim;
    }

    private static File uniqueFile(File file, String str) {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            return file2;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        String strSubstring = iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
        String strSubstring2 = iLastIndexOf > 0 ? str.substring(iLastIndexOf) : "";
        int i = 1;
        while (file2.exists()) {
            file2 = new File(file, strSubstring + "_" + i + strSubstring2);
            i++;
        }
        return file2;
    }

    private static String buildHeader(Context context) {
        return joinCsv(str(context, R$string.create_time), str(context, R$string.point_group_name), str(context, R$string.point_name), str(context, R$string.easting), str(context, R$string.northing), str(context, R$string.elev), str(context, R$string.solution_state), "HDOP", "VDOP", str(context, R$string.antenna_height), str(context, R$string.ellipsoid), str(context, R$string.projection_type), str(context, R$string.conversion_params));
    }

    private static String buildRow(Context context, String str, PointlibEntity pointlibEntity, String str2, String str3, String str4, String str5) {
        if (pointlibEntity == null) {
            return joinCsv("", str, "", "", "", "", "", "", "", str5, str2, str3, str4);
        }
        double[] dArrResolveEnh = resolveEnh(pointlibEntity);
        String createTime = formatCreateTime(pointlibEntity.createTime);
        String str6 = pointlibEntity.name;
        if (str6 == null) {
            str6 = "";
        }
        return joinCsv(createTime, str, str6, formatCoord(dArrResolveEnh[0]), formatCoord(dArrResolveEnh[1]), formatCoord(dArrResolveEnh[2]), formatSolution(context, pointlibEntity.quality), formatDop(pointlibEntity.hdop), formatDop(pointlibEntity.vdop), str5, str2, str3, str4);
    }

    static double[] resolveEnh(PointlibEntity pointlibEntity) {
        if (pointlibEntity == null) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        double d = pointlibEntity.east;
        if (d != 0.0d || pointlibEntity.north != 0.0d || pointlibEntity.elev != 0.0d) {
            return new double[]{d, pointlibEntity.north, pointlibEntity.elev};
        }
        double d2 = pointlibEntity.lon;
        double d3 = (d2 == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.geodeticLon : d2;
        double d4 = (d2 == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.geodeticLat : pointlibEntity.lat;
        double d5 = pointlibEntity.alt;
        if (d5 == 0.0d) {
            d5 = pointlibEntity.geodeticElev;
        }
        double d6 = d5;
        if (d3 == 0.0d && d4 == 0.0d && d6 == 0.0d) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        double[] dArr = new double[3];
        return GnssCoordConvertManager.getInstance().geoToAlignedProj(d3, d4, d6, dArr) ? dArr : new double[]{pointlibEntity.east, pointlibEntity.north, pointlibEntity.elev};
    }

    static String formatCoord(double d) {
        return formatDecimal(d, 3);
    }

    static String formatDop(double d) {
        return formatDecimal(d, 3);
    }

    static String formatCreateTime(long j) {
        if (j <= 0) {
            return "";
        }
        if (String.valueOf(j).length() == 10) {
            j *= 1000;
        }
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(j));
    }

    static String formatSolution(Context context, int i) {
        if (context == null) {
            return String.valueOf(i);
        }
        switch (i) {
            case 0:
            case 3:
                break;
            case 1:
                break;
            case 2:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            default:
                if (i >= 0) {
                    break;
                } else {
                    break;
                }
        }
        return String.valueOf(i);
    }

    static String formatEllipsoid(Context context, EngineeringEntity engineeringEntity) {
        String strEllipsoidLabel;
        if (engineeringEntity == null) {
            return "";
        }
        int i = engineeringEntity.ellipsoidType;
        if (i == 0 && engineeringEntity.customEllipsoidParams != null) {
            strEllipsoidLabel = str(context, R$string.customize);
            if (strEllipsoidLabel.isEmpty()) {
                strEllipsoidLabel = "Custom";
            }
        } else if (i == 1) {
            strEllipsoidLabel = "WGS-84";
        } else if (i == 2) {
            strEllipsoidLabel = "CGCS2000";
        } else if (i == 3) {
            strEllipsoidLabel = "XIAN 80";
        } else if (i == 4) {
            strEllipsoidLabel = "BEIJING 54";
        } else {
            strEllipsoidLabel = EngineeringEllipsoidProjDef.ellipsoidLabel(i);
        }
        EngineeringEllipsoidProjDef.EllipsoidParams ellipsoidParamsResolveEllipsoidParams = EngineeringEllipsoidProjDef.resolveEllipsoidParams(engineeringEntity);
        if (ellipsoidParamsResolveEllipsoidParams == null) {
            return strEllipsoidLabel;
        }
        return strEllipsoidLabel + " " + fallbackLabel(str(context, R$string.half_axis), Proj4Keyword.a) + "=" + formatPlain(ellipsoidParamsResolveEllipsoidParams.a, 3) + " " + fallbackLabel(str(context, R$string.flatness), Proj4Keyword.f) + "=" + formatPlain(ellipsoidParamsResolveEllipsoidParams.f, 12);
    }

    static String formatProjectionParams(Context context, EngineeringEntity engineeringEntity) {
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams;
        EngineeringEntity.UTMParams uTMParams;
        EngineeringEntity.GaussKrugerParams gaussKrugerParams;
        if (engineeringEntity == null || engineeringEntity.projectionType <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        appendKv(sb, fallbackLabel(str(context, R$string.projection_type), "projection"), projectionTypeLabel(context, engineeringEntity.projectionType));
        int i = engineeringEntity.projectionType;
        if (i == 1 && (gaussKrugerParams = engineeringEntity.gaussKrugerParams) != null) {
            appendKv(sb, fallbackLabel(str(context, R$string.central_meridian), "lon0"), formatPlain(gaussKrugerParams.lon0, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.origin_latitude), "lat0"), formatPlain(gaussKrugerParams.lat0, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.east_offset), "fe"), formatPlain(gaussKrugerParams.fe, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.north_offset), "fn"), formatPlain(gaussKrugerParams.fn, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.scale_factor), "k0"), formatPlain(gaussKrugerParams.k0, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.deformation_compensation), "deformation"), deformationLabel(context, gaussKrugerParams.deformationMethod));
            appendKv(sb, fallbackLabel(str(context, R$string.projection_elevation), "projection_height"), formatPlain(gaussKrugerParams.projectionHeight, 9));
        } else if (i == 2 && (uTMParams = engineeringEntity.utmParams) != null) {
            appendKv(sb, fallbackLabel(str(context, R$string.utm_zone), Proj4Keyword.zone), String.valueOf(uTMParams.zone));
            appendKv(sb, fallbackLabel(str(context, R$string.is_north), "is_north"), uTMParams.isNorth ? "true" : "false");
            appendKv(sb, fallbackLabel(str(context, R$string.deformation_compensation), "deformation"), deformationLabel(context, uTMParams.deformationMethod));
            appendKv(sb, fallbackLabel(str(context, R$string.projection_elevation), "projection_height"), formatPlain(uTMParams.projectionHeight, 9));
        } else if (i == 3 && (transverseMercatorParams = engineeringEntity.transverseMercatorParams) != null) {
            appendKv(sb, fallbackLabel(str(context, R$string.central_meridian), "lon0"), formatPlain(transverseMercatorParams.lon0, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.origin_latitude), "lat0"), formatPlain(transverseMercatorParams.lat0, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.east_offset), "fe"), formatPlain(transverseMercatorParams.fe, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.north_offset), "fn"), formatPlain(transverseMercatorParams.fn, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.scale_factor), "k0"), formatPlain(transverseMercatorParams.k0, 9));
            appendKv(sb, fallbackLabel(str(context, R$string.deformation_compensation), "deformation"), deformationLabel(context, transverseMercatorParams.deformationMethod));
            appendKv(sb, fallbackLabel(str(context, R$string.projection_elevation), "projection_height"), formatPlain(transverseMercatorParams.projectionHeight, 9));
        } else {
            return projectionTypeLabel(context, i);
        }
        return sb.toString();
    }

    private static String projectionTypeLabel(Context context, int i) {
        if (i == 1) {
            return fallbackLabel(str(context, R$string.gauss_kruger), "Gauss-Kruger");
        }
        if (i == 2) {
            return fallbackLabel(str(context, R$string.utm), "UTM");
        }
        if (i == 3) {
            return fallbackLabel(str(context, R$string.transverse_mercator), "Transverse Mercator");
        }
        return EngineeringEllipsoidProjDef.projectionLabel(i);
    }

    private static String deformationLabel(Context context, int i) {
        if (i == 1) {
            return fallbackLabel(str(context, R$string.scale_deformation), "scale");
        }
        if (i == 2) {
            return fallbackLabel(str(context, R$string.expansion_deformation), "expansion");
        }
        return fallbackLabel(str(context, R$string.none_deformation), "none");
    }

    private static void appendKv(StringBuilder sb, String str, String str2) {
        if (sb.length() > 0) {
            sb.append("; ");
        }
        if (!isEmpty(str)) {
            sb.append(str);
            sb.append('=');
        }
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
    }

    private static String fallbackLabel(String str, String str2) {
        return isEmpty(str) ? str2 : str;
    }

    static String formatTransParam(Context context, EngineeringEntity engineeringEntity) {
        GnssTransParamEntity gnssTransParamEntity;
        GnssTransParamEntity.SevenParamsDetail sevenParamsDetail;
        if (engineeringEntity != null && (gnssTransParamEntity = engineeringEntity.transParam) != null && gnssTransParamEntity.hasParamsDetail()) {
            GnssTransParamEntity gnssTransParamEntity2 = engineeringEntity.transParam;
            int i = gnssTransParamEntity2.paramType;
            if (i == 1) {
                GnssTransParamEntity.FourParamsDetail fourParamsDetail = gnssTransParamEntity2.getFourParamsDetail();
                if (fourParamsDetail == null) {
                    return "";
                }
                return fallbackLabel(str(context, R$string.four_params), "4-param") + " dx=" + formatPlain(fourParamsDetail.dx, 9) + " dy=" + formatPlain(fourParamsDetail.dy, 9) + " " + fallbackLabel(str(context, R$string.param_rotation), "rotation") + "=" + formatPlain(fourParamsDetail.rotation, 9) + " " + fallbackLabel(str(context, R$string.scale_ppm), "scale(PPM)") + "=" + formatPlain(GnssTransParamEntity.normalizeScaleToPpm(fourParamsDetail.scale), 9);
            }
            if (i != 2 || (sevenParamsDetail = gnssTransParamEntity2.getSevenParamsDetail()) == null) {
                return "";
            }
            return fallbackLabel(str(context, R$string.seven_params), "7-param") + " dx=" + formatPlain(sevenParamsDetail.dx, 9) + " dy=" + formatPlain(sevenParamsDetail.dy, 9) + " dz=" + formatPlain(sevenParamsDetail.dz, 9) + " " + fallbackLabel(str(context, R$string.param_rx), "rx") + "=" + formatPlain(sevenParamsDetail.rx, 9) + " " + fallbackLabel(str(context, R$string.param_ry), "ry") + "=" + formatPlain(sevenParamsDetail.ry, 9) + " " + fallbackLabel(str(context, R$string.param_rz), "rz") + "=" + formatPlain(sevenParamsDetail.rz, 9) + " " + fallbackLabel(str(context, R$string.scale_ppm), "scale(PPM)") + "=" + formatPlain(GnssTransParamEntity.normalizeScaleToPpm(sevenParamsDetail.scale), 9);
        }
        return "";
    }

    static String csvEscape(String str) {
        if (str == null) {
            return "";
        }
        if (str.indexOf(44) < 0 && str.indexOf(34) < 0 && str.indexOf(10) < 0 && str.indexOf(13) < 0) {
            return str;
        }
        return AngleFormat.STR_SEC_SYMBOL + str.replace(AngleFormat.STR_SEC_SYMBOL, "\"\"") + AngleFormat.STR_SEC_SYMBOL;
    }

    private static String joinCsv(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(csvEscape(strArr[i]));
        }
        return sb.toString();
    }

    private static String str(Context context, int i) {
        if (context == null) {
            return "";
        }
        return LanguagePrefs.getString(context, i);
    }

    private static boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }

    private static String formatDecimal(double d, int i) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return formatPlain(0.0d, i);
        }
        return new BigDecimal(String.valueOf(d)).setScale(i, RoundingMode.HALF_UP).toPlainString();
    }

    private static String formatPlain(double d, int i) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            d = 0.0d;
        }
        return EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0.m(new BigDecimal(String.valueOf(d)).setScale(i, RoundingMode.HALF_UP)).toPlainString();
    }
}

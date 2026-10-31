package com.qh.libexcavator.nativelib;

import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.Pointer;
import com.sun.jna.Structure;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public interface LibExcavator extends Library {
    public static final int ADJUST_HEIGHT_DEVICE_PITCH = 2;
    public static final int ADJUST_HEIGHT_HA = 32;
    public static final int ADJUST_HEIGHT_HEIGHT_VALID = 1;
    public static final int ADJUST_HEIGHT_SENSOR_PITCH = 4;
    public static final int ADJUST_HEIGHT_TOOL_FREE = 8;
    public static final int ADJUST_HEIGHT_TOOL_ROTATE = 16;
    public static final int BINARY_SIZE_MAX = 128;
    public static final int HANDLE_LONGS = 128;
    public static final LibExcavator INSTANCE = (LibExcavator) Native.load("excavator", LibExcavator.class);
    public static final int MODE_1 = 1;
    public static final int MODE_2 = 2;
    public static final int MODE_3 = 3;
    public static final int SAMPLE_AMOUNT_MAX = 16;
    public static final int TOOL_POINT_AMOUNT = 4;

    @Structure.FieldOrder({"sample", "A", "B", "D", "L", Proj4Keyword.R})
    public static class AdjustRtkSample extends Structure {
        public Sample sample = new Sample();
        public Point A = new Point();
        public Point B = new Point();
        public Point D = new Point();
        public Point L = new Point();
        public Point R = new Point();
    }

    @Structure.FieldOrder({Proj4Keyword.a})
    public static class LibexcavatorT extends Structure {
        public long[] a = new long[128];
    }

    @Structure.FieldOrder({"phase_to_arp", "arp_to_rod", "sample_list", "sample_amount"})
    public static class Mode11Cali extends Structure {
        public double arp_to_rod;
        public double phase_to_arp;
        public int sample_amount;
        public Pointer sample_list;
    }

    @Structure.FieldOrder({"world_from_device", "GL", "GR", "LR", "HG"})
    public static class Mode1Cali extends Structure {
        public double GL;
        public double GR;
        public double HG;
        public double LR;
        public Point world_from_device = new Point();
    }

    @Structure.FieldOrder({"phase_to_hang", "HA", "Hy", "Dx", "AD", "CD", "BC", "tool", "RE_world_from_device", "RE_amount", "A_world_from_device", "B_world_from_device", "B_world_from_sensor", "dc_world_from_device", "dc_world_from_sensor"})
    public static class Mode21Cali extends Structure {
        public double AD;
        public double BC;
        public double CD;
        public double Dx;
        public double HA;
        public double Hy;
        public int RE_amount;
        public Pointer RE_world_from_device;
        public double phase_to_hang;
        public Tool tool = new Tool();
        public Point A_world_from_device = new Point();
        public Point B_world_from_device = new Point();
        public Point B_world_from_sensor = new Point();
        public Point dc_world_from_device = new Point();
        public Point dc_world_from_sensor = new Point();
    }

    @Structure.FieldOrder({"world_from_device", "world_from_sensor", "HA", "Hy", "Ay", "Ax", "Dx", "AD", "BD", "CD", "BC", "tool"})
    public static class Mode2Cali extends Structure {
        public double AD;
        public double Ax;
        public double Ay;
        public double BC;
        public double BD;
        public double CD;
        public double Dx;
        public double HA;
        public double Hy;
        public Point world_from_device = new Point();
        public Point world_from_sensor = new Point();
        public Tool tool = new Tool();
    }

    @Structure.FieldOrder({"world_from_device", "HA", "Hy", "Ay", "Ax", "Dx", "AD", "BD", "CD", "BC", "tool"})
    public static class Mode3Cali extends Structure {
        public double AD;
        public double Ax;
        public double Ay;
        public double BC;
        public double BD;
        public double CD;
        public double Dx;
        public double HA;
        public double Hy;
        public Point world_from_device = new Point();
        public Tool tool = new Tool();
    }

    @Structure.FieldOrder({"phase_to_hang", "phase_center", "phase_center_stde", "world_from_device", "world_from_device_stde", "world_from_sensor", "world_from_sensor_valid"})
    public static class Sample extends Structure {
        public double phase_to_hang;
        public int world_from_sensor_valid;
        public Point phase_center = new Point();
        public Point phase_center_stde = new Point();
        public Point world_from_device = new Point();
        public Point world_from_device_stde = new Point();
        public Point world_from_sensor = new Point();
    }

    @Structure.FieldOrder({"AB", "TT"})
    public static class Tool extends Structure {
        public double AB;
        public Point[] TT = (Point[]) new Point().toArray(4);
    }

    int libexcavator_adjust_hab_vertical(LibexcavatorT libexcavatorT, Sample sample);

    int libexcavator_adjust_height(LibexcavatorT libexcavatorT, int i, double d, Sample[] sampleArr, int i2);

    int libexcavator_adjust_rtk(LibexcavatorT libexcavatorT, AdjustRtkSample[] adjustRtkSampleArr, int i);

    int libexcavator_cali_mode_1_0(LibexcavatorT libexcavatorT, Mode1Cali mode1Cali);

    double libexcavator_cali_mode_1_1(LibexcavatorT libexcavatorT, Mode11Cali mode11Cali);

    int libexcavator_cali_mode_2_0(LibexcavatorT libexcavatorT, Mode2Cali mode2Cali);

    int libexcavator_cali_mode_2_1(LibexcavatorT libexcavatorT, Mode21Cali mode21Cali);

    int libexcavator_cali_mode_3_0(LibexcavatorT libexcavatorT, Mode3Cali mode3Cali);

    int libexcavator_from_binary(LibexcavatorT libexcavatorT, byte[] bArr, int i);

    double libexcavator_get_height_stdev(LibexcavatorT libexcavatorT, int i, double d, Sample[] sampleArr, int i2);

    int libexcavator_get_mode(LibexcavatorT libexcavatorT);

    int libexcavator_get_rtk_stdev(LibexcavatorT libexcavatorT, AdjustRtkSample[] adjustRtkSampleArr, int i, Point[] pointArr);

    int libexcavator_get_tool(LibexcavatorT libexcavatorT, Tool tool);

    void libexcavator_init(LibexcavatorT libexcavatorT);

    int libexcavator_set_tool(LibexcavatorT libexcavatorT, Tool tool);

    int libexcavator_to_binary(LibexcavatorT libexcavatorT, byte[] bArr, int i);

    int libexcavator_tool_check(Tool tool);

    int libexcavator_tool_from_binary(Tool tool, byte[] bArr, int i);

    int libexcavator_tool_from_distance(Tool tool, double d, double d2, double d3, double d4, double d5);

    int libexcavator_tool_to_binary(Tool tool, byte[] bArr, int i);

    String libexcavator_version();

    @Structure.FieldOrder({"x", "y", "z"})
    public static class Point extends Structure {
        public double x;
        public double y;
        public double z;

        public Point() {
        }

        public Point(double d, double d2, double d3) {
            this.x = d;
            this.y = d2;
            this.z = d3;
        }
    }
}

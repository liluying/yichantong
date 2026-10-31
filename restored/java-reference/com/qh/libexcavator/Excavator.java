package com.qh.libexcavator;

import com.qh.libexcavator.nativelib.LibExcavator;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class Excavator {
    public static final int ADJUST_HEIGHT_DEVICE_PITCH = 2;
    public static final int ADJUST_HEIGHT_HA = 32;
    public static final int ADJUST_HEIGHT_HEIGHT_VALID = 1;
    public static final int ADJUST_HEIGHT_SENSOR_PITCH = 4;
    public static final int ADJUST_HEIGHT_TOOL_FREE = 8;
    public static final int ADJUST_HEIGHT_TOOL_ROTATE = 16;
    public static final int BINARY_SIZE_MAX = 128;
    public static final int MODE_1 = 1;
    public static final int MODE_2 = 2;
    public static final int MODE_3 = 3;
    public static final int SAMPLE_AMOUNT_MAX = 16;
    public static final int TOOL_POINT_AMOUNT = 4;
    private final LibExcavator.LibexcavatorT handle;
    private final LibExcavator lib;
    private final String version;

    public Excavator() {
        LibExcavator libExcavator = LibExcavator.INSTANCE;
        this.lib = libExcavator;
        LibExcavator.LibexcavatorT libexcavatorT = new LibExcavator.LibexcavatorT();
        this.handle = libexcavatorT;
        libExcavator.libexcavator_init(libexcavatorT);
        this.version = libExcavator.libexcavator_version();
    }

    public String getVersion() {
        return this.version;
    }

    public int getMode() {
        return this.lib.libexcavator_get_mode(this.handle);
    }

    public double getHeightStdev(int i, double d, LibExcavator.Sample[] sampleArr) {
        return this.lib.libexcavator_get_height_stdev(this.handle, i, d, sampleArr, sampleArr.length);
    }

    public int adjustHeight(int i, double d, LibExcavator.Sample[] sampleArr) {
        return this.lib.libexcavator_adjust_height(this.handle, i, d, sampleArr, sampleArr.length);
    }

    public int adjustHABVertical(LibExcavator.Sample sample) {
        return this.lib.libexcavator_adjust_hab_vertical(this.handle, sample);
    }

    public int getRtkStdev(LibExcavator.AdjustRtkSample[] adjustRtkSampleArr, LibExcavator.Point[] pointArr) {
        return this.lib.libexcavator_get_rtk_stdev(this.handle, adjustRtkSampleArr, adjustRtkSampleArr.length, pointArr);
    }

    public int adjustRtk(LibExcavator.AdjustRtkSample[] adjustRtkSampleArr) {
        return this.lib.libexcavator_adjust_rtk(this.handle, adjustRtkSampleArr, adjustRtkSampleArr.length);
    }

    public byte[] toBinary() {
        byte[] bArr = new byte[128];
        int iLibexcavator_to_binary = this.lib.libexcavator_to_binary(this.handle, bArr, 128);
        if (iLibexcavator_to_binary <= 0 || iLibexcavator_to_binary > 128) {
            throw new IllegalStateException("libexcavator_to_binary failed, returned " + iLibexcavator_to_binary);
        }
        byte[] bArr2 = new byte[iLibexcavator_to_binary];
        System.arraycopy(bArr, 0, bArr2, 0, iLibexcavator_to_binary);
        return bArr2;
    }

    public int toBinary(byte[] bArr) {
        return this.lib.libexcavator_to_binary(this.handle, bArr, bArr.length);
    }

    public int fromBinary(byte[] bArr) {
        return this.lib.libexcavator_from_binary(this.handle, bArr, bArr.length);
    }

    public int setTool(LibExcavator.Tool tool) {
        return this.lib.libexcavator_set_tool(this.handle, tool);
    }

    public LibExcavator.Tool getTool() {
        LibExcavator.Tool tool = new LibExcavator.Tool();
        this.lib.libexcavator_get_tool(this.handle, tool);
        return tool;
    }

    public static int toolCheck(LibExcavator.Tool tool) {
        return LibExcavator.INSTANCE.libexcavator_tool_check(tool);
    }

    public static int toolToBinary(LibExcavator.Tool tool, byte[] bArr) {
        return LibExcavator.INSTANCE.libexcavator_tool_to_binary(tool, bArr, bArr.length);
    }

    public static int toolFromBinary(LibExcavator.Tool tool, byte[] bArr) {
        return LibExcavator.INSTANCE.libexcavator_tool_from_binary(tool, bArr, bArr.length);
    }

    public static int toolFromDistance(LibExcavator.Tool tool, double d, double d2, double d3, double d4, double d5) {
        return LibExcavator.INSTANCE.libexcavator_tool_from_distance(tool, d, d2, d3, d4, d5);
    }

    public static String libraryVersion() {
        return LibExcavator.INSTANCE.libexcavator_version();
    }

    public static LibExcavator.Sample[] samples(int i) {
        return (LibExcavator.Sample[]) new LibExcavator.Sample().toArray(i);
    }

    public static LibExcavator.AdjustRtkSample[] rtkSamples(int i) {
        return (LibExcavator.AdjustRtkSample[]) new LibExcavator.AdjustRtkSample().toArray(i);
    }

    public static LibExcavator.Point[] points(int i) {
        return (LibExcavator.Point[]) new LibExcavator.Point().toArray(i);
    }

    public LibExcavator raw() {
        return this.lib;
    }

    public LibExcavator.LibexcavatorT handle() {
        return this.handle;
    }
}

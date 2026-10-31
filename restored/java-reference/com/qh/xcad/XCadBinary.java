package com.qh.xcad;

import com.tencent.smtt.export.external.interfaces.ISelectionInterface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class XCadBinary {
    private static final int ENTITY_HEADER_SIZE = 20;
    public static final int ENT_ARC = 3;
    public static final int ENT_CIRCLE = 2;
    public static final int ENT_LINE = 0;
    public static final int ENT_MTEXT = 6;
    public static final int ENT_POINT = 4;
    public static final int ENT_POLYLINE = 1;
    public static final int ENT_TEXT = 5;
    private static final int FILE_HEADER_SIZE = 64;
    public static final int FLAG_CLOSED = 1;
    public static final int FLAG_DASHED = 2;
    public static final int FLAG_FILLED = 4;
    public static final int FORMAT_VERSION = 4;
    public static final int MAGIC = 1480802628;
    private static final int NO_LAYER = 65535;
    private static final long NO_TEXT = 4294967295L;
    private static final int POINT_STRIDE = 24;

    private XCadBinary() {
    }

    public static XCadScene decode(byte[] bArr) {
        List<String> layerPool;
        String str;
        float f;
        float f2;
        if (bArr == null || bArr.length < 64) {
            StringBuilder sb = new StringBuilder();
            sb.append("数据过短: ");
            sb.append(bArr == null ? "null" : Integer.valueOf(bArr.length));
            throw new IllegalArgumentException(sb.toString());
        }
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        int i = byteBufferOrder.getInt(0);
        if (i != 1480802628) {
            throw new IllegalArgumentException(String.format("magic 不匹配: 0x%08X", Integer.valueOf(i)));
        }
        int i2 = byteBufferOrder.getInt(4);
        if (i2 != 4) {
            throw new IllegalArgumentException("不支持的格式版本: " + i2 + "（仅支持 v4，不向后兼容）");
        }
        int i3 = byteBufferOrder.getInt(8);
        double[] dArr = {byteBufferOrder.getDouble(12), byteBufferOrder.getDouble(20), byteBufferOrder.getDouble(28), byteBufferOrder.getDouble(36), byteBufferOrder.getDouble(44), byteBufferOrder.getDouble(52)};
        long j = byteBufferOrder.getInt(60) & 4294967295L;
        long j2 = (i3 * 20) + 64;
        long j3 = 0;
        int i4 = 0;
        while (i4 < i3) {
            j3 += byteBufferOrder.getInt((i4 * 20) + 72);
            i4++;
            dArr = dArr;
        }
        double[] dArr2 = dArr;
        long j4 = j2 + (j3 * 24);
        if (j != 0) {
            layerPool = readLayerPool(byteBufferOrder, bArr, (int) j);
        } else {
            layerPool = Collections.EMPTY_LIST;
        }
        List<String> list = layerPool;
        ArrayList arrayList = new ArrayList(i3);
        XCadScene xCadScene = new XCadScene(i2, dArr2, list, arrayList, j2, j4);
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i5 * 20;
            int i7 = byteBufferOrder.get(i6 + 64) & 255;
            int i8 = byteBufferOrder.get(i6 + 65) & 255;
            int i9 = byteBufferOrder.getShort(i6 + 66) & ISelectionInterface.HELD_NOTHING;
            int i10 = byteBufferOrder.getInt(i6 + 68);
            int i11 = byteBufferOrder.getInt(i6 + 72);
            int i12 = byteBufferOrder.getInt(i6 + 76);
            long j5 = byteBufferOrder.getInt(i6 + 80) & 4294967295L;
            int i13 = (int) (j2 + (i12 * 24));
            double[] dArr3 = new double[i11 * 3];
            double d = Double.NEGATIVE_INFINITY;
            double d2 = Double.NEGATIVE_INFINITY;
            double d3 = Double.NEGATIVE_INFINITY;
            double d4 = Double.POSITIVE_INFINITY;
            double d5 = Double.POSITIVE_INFINITY;
            double d6 = Double.POSITIVE_INFINITY;
            for (int i14 = 0; i14 < i11; i14++) {
                double d7 = byteBufferOrder.getDouble(i13);
                double d8 = byteBufferOrder.getDouble(i13 + 8);
                double d9 = byteBufferOrder.getDouble(i13 + 16);
                int i15 = i14 * 3;
                dArr3[i15] = d7;
                dArr3[i15 + 1] = d8;
                dArr3[i15 + 2] = d9;
                if (d7 < d4) {
                    d4 = d7;
                }
                if (d8 < d5) {
                    d5 = d8;
                }
                if (d9 < d6) {
                    d6 = d9;
                }
                if (d7 > d) {
                    d = d7;
                }
                if (d8 > d2) {
                    d2 = d8;
                }
                if (d9 > d3) {
                    d3 = d9;
                }
                i13 += 24;
            }
            String str2 = null;
            if (j5 != 4294967295L) {
                int i16 = (int) (j4 + j5);
                float f3 = byteBufferOrder.getFloat(i16);
                float f4 = byteBufferOrder.getFloat(i16 + 4);
                byte[] bArr2 = new byte[byteBufferOrder.getInt(i16 + 8)];
                byteBufferOrder.position(i16 + 12);
                byteBufferOrder.get(bArr2);
                str = new String(bArr2, StandardCharsets.UTF_8);
                f = f3;
                f2 = f4;
            } else {
                str = null;
                f = 0.0f;
                f2 = 0.0f;
            }
            if (i9 != 65535 && i9 < list.size()) {
                str2 = list.get(i9);
            }
            arrayList.add(new XCadEntity(xCadScene, i7, i8, i10, str2, dArr3, d4, d5, d6, d, d2, d3, str, f, f2));
        }
        return xCadScene;
    }

    private static List<String> readLayerPool(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int i2 = byteBuffer.getInt(i);
        int i3 = i + 4;
        ArrayList arrayList = new ArrayList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = byteBuffer.getInt(i3);
            int i6 = i3 + 4;
            byte[] bArr2 = new byte[i5];
            byteBuffer.position(i6);
            byteBuffer.get(bArr2);
            arrayList.add(new String(bArr2, StandardCharsets.UTF_8));
            i3 = i6 + i5;
        }
        return arrayList;
    }
}

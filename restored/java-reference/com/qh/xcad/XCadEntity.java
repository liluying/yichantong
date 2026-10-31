package com.qh.xcad;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class XCadEntity {
    public final int color;
    public final int flags;
    public final String layerName;
    public final double maxX;
    public final double maxY;
    public final double maxZ;
    public final double minX;
    public final double minY;
    public final double minZ;
    public final double[] points;
    public final XCadScene scene;
    public final String text;
    public final int textAttachment;
    public final float textHeight;
    public final float textRotation;
    public final int type;

    public XCadEntity(XCadScene xCadScene, int i, int i2, int i3, String str, double[] dArr, double d, double d2, double d3, double d4, double d5, double d6, String str2, float f, float f2) {
        this(xCadScene, i, i2, i3, str, dArr, d, d2, d3, d4, d5, d6, str2, f, f2, 7);
    }

    public XCadEntity(XCadScene xCadScene, int i, int i2, int i3, String str, double[] dArr, double d, double d2, double d3, double d4, double d5, double d6, String str2, float f, float f2, int i4) {
        this.scene = xCadScene;
        this.type = i;
        this.flags = i2;
        this.color = i3;
        this.layerName = str;
        this.points = dArr;
        this.minX = d;
        this.minY = d2;
        this.minZ = d3;
        this.maxX = d4;
        this.maxY = d5;
        this.maxZ = d6;
        this.text = str2;
        this.textHeight = f;
        this.textRotation = f2;
        this.textAttachment = i4;
    }

    public boolean isClosed() {
        return (this.flags & 1) != 0;
    }

    public boolean isDashed() {
        return (this.flags & 2) != 0;
    }

    public boolean isFilled() {
        return (this.flags & 4) != 0;
    }

    public int pointCount() {
        double[] dArr = this.points;
        if (dArr.length < 3) {
            return 0;
        }
        return dArr.length / 3;
    }

    public double pointX(int i) {
        return this.points[i * 3];
    }

    public double pointY(int i) {
        return this.points[(i * 3) + 1];
    }

    public double pointZ(int i) {
        return this.points[(i * 3) + 2];
    }
}

package com.qh.xcad;

import android.graphics.Path;
import java.util.Map;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
class XCadPathChunk {
    int color;
    boolean fill;
    Map<Integer, Path> lodPathCache;
    double maxX;
    double maxY;
    double minX;
    double minY;

    public void setBox(double d, double d2, double d3, double d4) {
        this.minX = d;
        this.minY = d2;
        this.maxX = d;
        this.maxY = d4;
    }
}

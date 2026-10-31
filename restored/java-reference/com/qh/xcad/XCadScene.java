package com.qh.xcad;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class XCadScene {
    public final double[] bbox;
    public final List<XCadEntity> entities;
    public final List<String> layers;
    public final long pointPoolBase;
    public final long textPoolBase;
    public final int version;

    public XCadScene(int i, double[] dArr, List<String> list, List<XCadEntity> list2, long j, long j2) {
        this.version = i;
        this.bbox = dArr;
        this.layers = list;
        this.entities = list2;
        this.pointPoolBase = j;
        this.textPoolBase = j2;
    }

    public int entityCount() {
        return this.entities.size();
    }
}

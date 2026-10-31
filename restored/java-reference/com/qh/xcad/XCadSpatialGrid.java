package com.qh.xcad;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.InternalZipConstants;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class XCadSpatialGrid {
    double cellSize = 200.0d;
    Map<Long, List<XCadPathChunk>> cells = new HashMap();

    long key(int i, int i2) {
        return (i2 & InternalZipConstants.ZIP_64_SIZE_LIMIT) | (i << 32);
    }

    public void clear() {
        this.cells.clear();
    }

    public void insert(XCadPathChunk xCadPathChunk) {
        double d = xCadPathChunk.minX;
        double d2 = this.cellSize;
        int i = (int) (xCadPathChunk.minY / d2);
        int i2 = (int) (xCadPathChunk.maxX / d2);
        int i3 = (int) (xCadPathChunk.maxY / d2);
        for (int i4 = (int) (d / d2); i4 <= i2; i4++) {
            for (int i5 = i; i5 <= i3; i5++) {
                long jKey = key(i4, i5);
                List<XCadPathChunk> arrayList = this.cells.get(Long.valueOf(jKey));
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.cells.put(Long.valueOf(jKey), arrayList);
                }
                arrayList.add(xCadPathChunk);
            }
        }
    }

    public List<XCadPathChunk> query(double d, double d2, double d3, double d4) {
        double d5 = this.cellSize;
        int i = (int) (d2 / d5);
        int i2 = (int) (d3 / d5);
        int i3 = (int) (d4 / d5);
        HashSet hashSet = new HashSet();
        for (int i4 = (int) (d / d5); i4 <= i2; i4++) {
            for (int i5 = i; i5 <= i3; i5++) {
                List<XCadPathChunk> list = this.cells.get(Long.valueOf(key(i4, i5)));
                if (list != null) {
                    hashSet.addAll(list);
                }
            }
        }
        return new ArrayList(hashSet);
    }
}

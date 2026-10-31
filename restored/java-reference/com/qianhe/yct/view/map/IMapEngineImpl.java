package com.qianhe.yct.view.map;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class IMapEngineImpl implements IMapEngine {
    protected OnLoadMapListener onLoadMapListener;

    @Override // com.qianhe.yct.view.map.IMapEngine
    public /* synthetic */ void addPolyline(List list, boolean z, List list2) {
        addPolyline(list, z);
    }

    public IMapEngineImpl() {
    }

    public IMapEngineImpl(OnLoadMapListener onLoadMapListener) {
        this.onLoadMapListener = onLoadMapListener;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void setOnLoadMapListener(OnLoadMapListener onLoadMapListener) {
        this.onLoadMapListener = onLoadMapListener;
    }
}

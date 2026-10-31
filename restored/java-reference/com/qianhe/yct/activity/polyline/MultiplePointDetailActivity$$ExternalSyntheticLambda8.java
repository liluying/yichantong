package com.qianhe.yct.activity.polyline;

import com.qianhe.yct.base.BaseActivity;

/* compiled from: R8$$SyntheticClass */
/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final /* synthetic */ class MultiplePointDetailActivity$$ExternalSyntheticLambda8 implements BaseActivity.OnInstrumentCollectListener {
    public final /* synthetic */ MultiplePointDetailActivity f$0;

    public /* synthetic */ MultiplePointDetailActivity$$ExternalSyntheticLambda8(MultiplePointDetailActivity multiplePointDetailActivity) {
        this.f$0 = multiplePointDetailActivity;
    }

    @Override // com.qianhe.yct.base.BaseActivity.OnInstrumentCollectListener
    public final void onResult(BaseActivity.InstrumentCollectResult instrumentCollectResult) {
        this.f$0.applyCollectedCoords(instrumentCollectResult);
    }
}

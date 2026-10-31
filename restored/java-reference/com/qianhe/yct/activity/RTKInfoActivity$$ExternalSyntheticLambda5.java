package com.qianhe.yct.activity;

import com.qianhe.yct.dialog.LoadingFragment;

/* compiled from: R8$$SyntheticClass */
/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final /* synthetic */ class RTKInfoActivity$$ExternalSyntheticLambda5 implements LoadingFragment.OnCloseListener {
    public final /* synthetic */ RTKInfoActivity f$0;

    public /* synthetic */ RTKInfoActivity$$ExternalSyntheticLambda5(RTKInfoActivity rTKInfoActivity) {
        this.f$0 = rTKInfoActivity;
    }

    @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
    public final void onClose(int i) {
        this.f$0.onLogUploadLoadingClosed(i);
    }
}

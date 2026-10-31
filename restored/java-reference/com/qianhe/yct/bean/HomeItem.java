package com.qianhe.yct.bean;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class HomeItem implements Serializable {
    private int iconRes;
    private int id;
    private int titleRes;

    public HomeItem(int i, int i2, int i3) {
        this.id = i;
        this.iconRes = i2;
        this.titleRes = i3;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public int getIconRes() {
        return this.iconRes;
    }

    public void setIconRes(int i) {
        this.iconRes = i;
    }

    public int getTitleRes() {
        return this.titleRes;
    }

    public void setTitleRes(int i) {
        this.titleRes = i;
    }
}

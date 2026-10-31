package com.qianhe.yct.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum MenuActionEnum {
    CREATE(0),
    DELETE(1),
    MODIFY(2),
    SHARE(3);

    private final int tabPos;

    MenuActionEnum(int i) {
        this.tabPos = i;
    }

    public int getType() {
        return this.tabPos;
    }
}

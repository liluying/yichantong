package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LoginResponse {
    public String account;
    public String msg;
    public String name;
    public int state;
    public String token;

    public LoginResponse(int i, String str, String str2, String str3, String str4) {
        this.state = i;
        this.token = str2;
        this.msg = str;
        this.account = str3;
        this.name = str4;
    }
}

package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CorsExpireEpochEvent {
    public String className;
    public long expireEpoch;
    public int state;

    public CorsExpireEpochEvent(String str, int i, long j) {
        this.className = str;
        this.state = i;
        this.expireEpoch = j;
    }
}

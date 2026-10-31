package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class TcpClientEvent {
    public boolean connected;
    public String ip;

    public TcpClientEvent(boolean z, String str) {
        this.connected = z;
        this.ip = str;
    }
}

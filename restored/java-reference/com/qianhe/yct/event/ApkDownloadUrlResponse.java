package com.qianhe.yct.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ApkDownloadUrlResponse {
    public String download_url;
    public String err_msg;
    public String file_md5;
    public long file_size;
    public int state;
    public String version;

    public ApkDownloadUrlResponse() {
    }

    public ApkDownloadUrlResponse(int i, String str) {
        this.state = i;
        this.err_msg = str;
    }
}

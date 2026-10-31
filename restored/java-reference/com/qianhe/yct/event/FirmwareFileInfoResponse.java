package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class FirmwareFileInfoResponse implements Serializable {
    public DeviceType deviceType;
    public String download_url;
    public String err_msg;
    public String file_md5;
    public long file_size;
    public int state;
    public String version;
}

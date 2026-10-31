package com.qianhe.yct.event;

import com.qianhe.baselib.enums.DeviceType;
import java.io.Serializable;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class FirmwareResponse implements Serializable {
    public DeviceType deviceType;
    public String err_msg;
    public List<Fmw> fmw_list;
    public boolean isModuleUpgrade;
    public String pns;
    public int state;

    public static class Fmw implements Serializable {
        public List<Info> list;
        public String pn;

        public static class Info implements Serializable {
            public String build_time;
            public String file_md5;
            public long file_size;
            public boolean forced;
            public int id;
            public String model;
            public String pn_list_str;
            public int strategy_id;
            public String update_log;
            public String version;
        }
    }
}

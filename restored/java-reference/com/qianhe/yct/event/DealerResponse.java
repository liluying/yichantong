package com.qianhe.yct.event;

import java.io.Serializable;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DealerResponse implements Serializable {
    public String address;
    public List<ContactInfo> contact_info;
    public String err_msg;
    public String name;
    public int state;

    public static class ContactInfo implements Serializable {
        public String name;
        public String remarks;
        public String telephone;
    }
}

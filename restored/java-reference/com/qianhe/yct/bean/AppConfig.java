package com.qianhe.yct.bean;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AppConfig implements Serializable {
    public long version = 0;
    public Details details = new Details();

    public static class Details implements Serializable {
        public String ntrip_password;
        public String ntrip_username;
        public int ntrip_type = 2;
        public String ntrip_host = "rss.rtkiot.cn";
        public int ntrip_port = 8001;
        public String ntrip_mount_point = "AUTO";
        public float gst_interval = 2.0f;
        public float dop_interval = 5.0f;
        public float snr_interval = 5.0f;
        public float sav_interval = 5.0f;
        public float sau_interval = 5.0f;
        public float refstation_interval = 5.0f;
        public float ins_interval = 0.2f;
        public float extsensor_1 = 0.2f;
        public int ins_unavailable_count = 10;
        public float gga_interval = 1.0f;
        public float bestpos_interval = 1.0f;
        public float work_tolerance = 0.03f;
        public float hrms_limit = 0.05f;
        public float vrms_limit = 0.1f;
        public int data_smoot = 0;
        public int display_distance_starting_point = 0;
        public int display_verify_horizontal_error = 0;
        public float base_mobility_threshold = 0.02f;
        public int unit_preference = 0;
        public float pole_height = 0.0f;
        public int tilt_display = 1;
        public float base_height_cutoff_angle = 5.0f;
        public float base_pdop_limit = 3.0f;
        public String base_host = "base.xfix-gnss.com";
        public String base_host_xfix = "base-hk.xfix-gnss.com";
        public int base_port = 6060;
    }
}

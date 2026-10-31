package com.qianhe.baselib.base;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseProEntity implements Serializable {
    public double baseStationElev;
    public double baseStationLat;
    public double baseStationLon;

    @SerializedName("belong_engineering_id")
    public long belongEngineeringId;
    public transient long belongUid;
    public String coordinateSystem;
    public String corsMount;
    public String corsName;
    public String corsPassword;
    public int corsPort;
    public String corsUserName;
    public transient long createTime;
    public int editState;

    @SerializedName("engineering_local_id")
    public long engineeringLocalId;
    public transient long id;
    public transient long projectId;
    public int shovelTipType;
    public int subType;
    public transient int type;
    public transient long updateTime;
    public transient long version;
    public transient String projectUUid = "";
    public transient String name = "";

    @SerializedName("engineering_uuid")
    public String engineeringUuid = "";

    @SerializedName(alternate = {"cad_path"}, value = "cadPath")
    public String cadPath = "";
    public String corsHost = "";
    public int showUnit = 0;
}

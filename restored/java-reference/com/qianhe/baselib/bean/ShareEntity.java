package com.qianhe.baselib.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareEntity implements Serializable {
    public long belongUid;

    @SerializedName("create_epoch")
    public long createTime;
    public int editState;

    @SerializedName("expire_epoch")
    public long expireTime;
    public String msg;
    public String name = "";

    @SerializedName("project_uuids")
    public String projectUUids;

    @SerializedName("code")
    public String shareCode;

    @SerializedName("id")
    public long shareId;

    @SerializedName("uuid")
    public String shareUUid;

    @SerializedName("update_epoch")
    public long updateTime;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ShareEntity shareEntity = (ShareEntity) obj;
            if (this.shareId == shareEntity.shareId && this.createTime == shareEntity.createTime && this.updateTime == shareEntity.updateTime && this.expireTime == shareEntity.expireTime && Objects.equals(this.msg, shareEntity.msg) && Objects.equals(this.shareCode, shareEntity.shareCode) && Objects.equals(this.name, shareEntity.name) && Objects.equals(this.projectUUids, shareEntity.projectUUids) && Objects.equals(this.shareUUid, shareEntity.shareUUid) && this.editState == shareEntity.editState) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.msg, Long.valueOf(this.shareId), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.expireTime), this.shareCode, this.name, this.projectUUids, this.shareUUid, Integer.valueOf(this.editState));
    }

    public String toString() {
        return "ShareEntity{shareId=" + this.shareId + ", createTime=" + this.createTime + ", expireTime=" + this.expireTime + ", updateTime=" + this.updateTime + ", shareCode='" + this.shareCode + AngleFormat.CH_MIN_SYMBOL + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", projectUUids='" + this.projectUUids + AngleFormat.CH_MIN_SYMBOL + ", shareUUid='" + this.shareUUid + AngleFormat.CH_MIN_SYMBOL + ", editState='" + this.editState + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}

package com.qianhe.baselib.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ThemeEntity implements Parcelable {
    public static final Parcelable.Creator<ThemeEntity> CREATOR = new Parcelable.Creator<ThemeEntity>() { // from class: com.qianhe.baselib.bean.ThemeEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThemeEntity createFromParcel(Parcel parcel) {
            return new ThemeEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThemeEntity[] newArray(int i) {
            return new ThemeEntity[i];
        }
    };
    public String name;
    public String value;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ThemeEntity(String str, String str2) {
        this.value = str;
        this.name = str2;
    }

    protected ThemeEntity(Parcel parcel) {
        this.value = parcel.readString();
        this.name = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.value);
        parcel.writeString(this.name);
    }
}

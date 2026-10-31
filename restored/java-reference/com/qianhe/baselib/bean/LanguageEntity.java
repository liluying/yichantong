package com.qianhe.baselib.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LanguageEntity implements Parcelable {
    public static final Parcelable.Creator<LanguageEntity> CREATOR = new Parcelable.Creator<LanguageEntity>() { // from class: com.qianhe.baselib.bean.LanguageEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LanguageEntity createFromParcel(Parcel parcel) {
            return new LanguageEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LanguageEntity[] newArray(int i) {
            return new LanguageEntity[i];
        }
    };
    public String code;
    public String name;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LanguageEntity(String str, String str2) {
        this.code = str;
        this.name = str2;
    }

    protected LanguageEntity(Parcel parcel) {
        this.code = parcel.readString();
        this.name = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.code);
        parcel.writeString(this.name);
    }
}

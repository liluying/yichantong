package com.qh.xcad;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ParseReply implements Parcelable {
    public static final Parcelable.Creator<ParseReply> CREATOR = new Parcelable.Creator<ParseReply>() { // from class: com.qh.xcad.ParseReply.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParseReply createFromParcel(Parcel parcel) {
            return new ParseReply(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParseReply[] newArray(int i) {
            return new ParseReply[i];
        }
    };
    public static final int STATUS_FAILED = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OOM = 2;
    public String error;
    public long length;
    public ParcelFileDescriptor pfd;
    public int status;

    public ParseReply() {
        this.status = 1;
    }

    protected ParseReply(Parcel parcel) {
        this.status = 1;
        this.status = parcel.readInt();
        this.length = parcel.readLong();
        this.error = parcel.readString();
        this.pfd = parcel.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.status);
        parcel.writeLong(this.length);
        parcel.writeString(this.error);
        if (this.pfd != null) {
            parcel.writeInt(1);
            this.pfd.writeToParcel(parcel, i);
        } else {
            parcel.writeInt(0);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.pfd != null ? 1 : 0;
    }
}

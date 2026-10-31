package com.qh.xcad;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public interface IXCadParseService extends IInterface {
    public static final String DESCRIPTOR = "com.qh.xcad.IXCadParseService";

    public static class Default implements IXCadParseService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.qh.xcad.IXCadParseService
        public ParseReply parse(String str) {
            return null;
        }
    }

    ParseReply parse(String str);

    public static abstract class Stub extends Binder implements IXCadParseService {
        static final int TRANSACTION_parse = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IXCadParseService.DESCRIPTOR);
        }

        public static IXCadParseService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IXCadParseService.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IXCadParseService)) {
                return (IXCadParseService) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IXCadParseService.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IXCadParseService.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                ParseReply parseReply = parse(parcel.readString());
                parcel2.writeNoException();
                _Parcel.writeTypedObject(parcel2, parseReply, 1);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements IXCadParseService {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IXCadParseService.DESCRIPTOR;
            }

            @Override // com.qh.xcad.IXCadParseService
            public ParseReply parse(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IXCadParseService.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParseReply) _Parcel.readTypedObject(parcelObtain2, ParseReply.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}

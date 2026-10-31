package com.qianhe.rtkclientlib.bean;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MyBluetoothDevice implements Parcelable {
    public static final Parcelable.Creator<MyBluetoothDevice> CREATOR = new Parcelable.Creator<MyBluetoothDevice>() { // from class: com.qianhe.rtkclientlib.bean.MyBluetoothDevice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MyBluetoothDevice createFromParcel(Parcel parcel) {
            return new MyBluetoothDevice(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MyBluetoothDevice[] newArray(int i) {
            return new MyBluetoothDevice[i];
        }
    };
    public BluetoothDevice bluetoothDevice;
    public String deviceName;
    public DeviceType deviceType;
    public int state;
    public String uuid;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MyBluetoothDevice() {
    }

    public MyBluetoothDevice(int i) {
        this.state = i;
    }

    public MyBluetoothDevice(BluetoothDevice bluetoothDevice) {
        this.bluetoothDevice = bluetoothDevice;
        cacheDeviceName(bluetoothDevice);
    }

    public MyBluetoothDevice(int i, DeviceType deviceType) {
        this.state = i;
        this.deviceType = deviceType;
    }

    public MyBluetoothDevice(BluetoothDevice bluetoothDevice, DeviceType deviceType) {
        this.bluetoothDevice = bluetoothDevice;
        this.deviceType = deviceType;
        cacheDeviceName(bluetoothDevice);
    }

    public MyBluetoothDevice(BluetoothDevice bluetoothDevice, DeviceType deviceType, String str) {
        this(bluetoothDevice, deviceType, str, null);
    }

    public MyBluetoothDevice(BluetoothDevice bluetoothDevice, DeviceType deviceType, String str, String str2) {
        this.bluetoothDevice = bluetoothDevice;
        this.deviceType = deviceType;
        this.uuid = str;
        if (!TextUtils.isEmpty(str2)) {
            this.deviceName = str2;
        } else {
            cacheDeviceName(bluetoothDevice);
        }
    }

    protected MyBluetoothDevice(Parcel parcel) {
        this.bluetoothDevice = (BluetoothDevice) parcel.readParcelable(BluetoothDevice.class.getClassLoader());
        this.state = parcel.readInt();
        this.uuid = parcel.readString();
        this.deviceName = parcel.readString();
    }

    @SuppressLint({"MissingPermission"})
    public void assignBluetoothDevice(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            this.bluetoothDevice = null;
            return;
        }
        BluetoothDevice bluetoothDevice2 = this.bluetoothDevice;
        if (bluetoothDevice2 == null || bluetoothDevice2.getAddress() == null || !bluetoothDevice.getAddress().equalsIgnoreCase(this.bluetoothDevice.getAddress())) {
            this.deviceName = null;
        }
        this.bluetoothDevice = bluetoothDevice;
    }

    @SuppressLint({"MissingPermission"})
    public void mergeDisplayNameFrom(MyBluetoothDevice myBluetoothDevice) {
        BluetoothDevice bluetoothDevice;
        if (myBluetoothDevice == null) {
            return;
        }
        BluetoothDevice bluetoothDevice2 = this.bluetoothDevice;
        if (bluetoothDevice2 == null || myBluetoothDevice.bluetoothDevice == null || bluetoothDevice2.getAddress() == null || myBluetoothDevice.bluetoothDevice.getAddress() == null || this.bluetoothDevice.getAddress().equalsIgnoreCase(myBluetoothDevice.bluetoothDevice.getAddress())) {
            if (!TextUtils.isEmpty(myBluetoothDevice.deviceName)) {
                this.deviceName = myBluetoothDevice.deviceName;
            } else {
                if (!TextUtils.isEmpty(this.deviceName) || (bluetoothDevice = myBluetoothDevice.bluetoothDevice) == null) {
                    return;
                }
                cacheDeviceName(bluetoothDevice);
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    public String getDisplayName() {
        if (!TextUtils.isEmpty(this.deviceName)) {
            return this.deviceName;
        }
        BluetoothDevice bluetoothDevice = this.bluetoothDevice;
        if (bluetoothDevice == null) {
            return "";
        }
        String name = bluetoothDevice.getName();
        if (!TextUtils.isEmpty(name)) {
            return name;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                String alias = this.bluetoothDevice.getAlias();
                if (!TextUtils.isEmpty(alias)) {
                    return alias;
                }
            } catch (SecurityException unused) {
            }
        }
        String address = this.bluetoothDevice.getAddress();
        return address != null ? address : "";
    }

    @SuppressLint({"MissingPermission"})
    private void cacheDeviceName(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null || !TextUtils.isEmpty(this.deviceName)) {
            return;
        }
        String name = bluetoothDevice.getName();
        if (TextUtils.isEmpty(name)) {
            return;
        }
        this.deviceName = name;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.bluetoothDevice, i);
        parcel.writeInt(this.state);
        parcel.writeString(this.uuid);
        parcel.writeString(this.deviceName);
    }
}

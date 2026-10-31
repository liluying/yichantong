package com.qianhe.baselib.enums;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public enum SensorUUidEnum {
    TYPE1("0000ffc5-0000-1000-8000-00805f9a34fb"),
    TYPE2("a30e0001-e8f9-417c-9354-13e39065536b");

    private final String uuid;

    SensorUUidEnum(String str) {
        this.uuid = str;
    }

    public String getUuid() {
        return this.uuid;
    }

    public static int getType(String str) {
        int iOrdinal;
        SensorUUidEnum sensorUUidEnum = TYPE1;
        if (str.equals(sensorUUidEnum.getUuid())) {
            iOrdinal = sensorUUidEnum.ordinal();
        } else {
            SensorUUidEnum sensorUUidEnum2 = TYPE2;
            if (!str.equals(sensorUUidEnum2.getUuid())) {
                return 0;
            }
            iOrdinal = sensorUUidEnum2.ordinal();
        }
        return iOrdinal + 1;
    }
}

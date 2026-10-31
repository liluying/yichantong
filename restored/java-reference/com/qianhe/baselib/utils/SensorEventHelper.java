package com.qianhe.baselib.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SensorEventHelper implements SensorEventListener {
    private float mAngle;
    private Context mContext;
    private Sensor mSensor;
    private SensorManager mSensorManager;
    private long lastTime = 0;
    private final int TIME_SENSOR = 100;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public SensorEventHelper(Context context) {
        this.mContext = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mSensor = sensorManager.getDefaultSensor(3);
    }

    public void registerSensorListener() {
        this.mSensorManager.registerListener(this, this.mSensor, 3);
    }

    public void unRegisterSensorListener() {
        this.mSensorManager.unregisterListener(this, this.mSensor);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (System.currentTimeMillis() - this.lastTime >= 100 && sensorEvent.sensor.getType() == 3) {
            float screenRotationOnPhone = (sensorEvent.values[0] + getScreenRotationOnPhone(this.mContext)) % 360.0f;
            if (screenRotationOnPhone > 180.0f) {
                screenRotationOnPhone -= 360.0f;
            } else if (screenRotationOnPhone < -180.0f) {
                screenRotationOnPhone += 360.0f;
            }
            if (Math.abs(this.mAngle - screenRotationOnPhone) < 3.0f) {
                return;
            }
            if (Float.isNaN(screenRotationOnPhone)) {
                screenRotationOnPhone = 0.0f;
            }
            this.mAngle = screenRotationOnPhone;
            this.lastTime = System.currentTimeMillis();
        }
    }

    public static int getScreenRotationOnPhone(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : -90;
        }
        return 180;
    }
}

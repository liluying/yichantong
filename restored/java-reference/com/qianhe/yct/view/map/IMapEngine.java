package com.qianhe.yct.view.map;

import android.os.Bundle;
import android.view.ViewGroup;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public interface IMapEngine {
    void addMarkerOrRoute(GeoPoint geoPoint, GeoPoint geoPoint2);

    void addPolyline(List<GeoPoint> list, boolean z);

    void addPolyline(List<GeoPoint> list, boolean z, List<String> list2);

    void attach(ViewGroup viewGroup);

    void centerLocation(GeoPoint geoPoint);

    void detach(ViewGroup viewGroup);

    void moveCamera(GeoPoint geoPoint, float f);

    boolean onBackPressed();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onLowMemory();

    void onPause();

    void onResume();

    void onStart();

    void onStop();

    void setOnLoadMapListener(OnLoadMapListener onLoadMapListener);

    void updateLocation(GeoPoint geoPoint, boolean z);

    /* renamed from: com.qianhe.yct.view.map.IMapEngine$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}

package com.qianhe.yct.view.map;

import android.os.Bundle;
import android.view.ViewGroup;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GaoDeEngine extends IMapEngineImpl {
    @Override // com.qianhe.yct.view.map.IMapEngine
    public void addMarkerOrRoute(GeoPoint geoPoint, GeoPoint geoPoint2) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void addPolyline(List<GeoPoint> list, boolean z) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void attach(ViewGroup viewGroup) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void centerLocation(GeoPoint geoPoint) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void detach(ViewGroup viewGroup) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void moveCamera(GeoPoint geoPoint, float f) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onCreate(Bundle bundle) {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onDestroy() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onLowMemory() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onPause() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onResume() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onStart() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onStop() {
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void updateLocation(GeoPoint geoPoint, boolean z) {
    }

    public GaoDeEngine() {
    }

    public GaoDeEngine(OnLoadMapListener onLoadMapListener) {
        super(onLoadMapListener);
    }
}

package com.qianhe.yct.view.map;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.qianhe.yct.R$drawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
class GoogleMapEngine extends IMapEngineImpl {
    private ValueAnimator animator;
    private Circle breathingCircle;
    private ViewGroup container;
    private boolean createFinish;
    private List<Marker> customMarkers;
    private GoogleMap googleMap;
    private boolean isAttached;
    private long lastUpdateTime;
    private boolean mapLoadFinish;
    private MapView mapView;
    private Marker marker;
    List<Polyline> routePolyline;
    private long updateThrottleInterval;
    private boolean viewReady;

    @Override // com.qianhe.yct.view.map.IMapEngine
    public boolean onBackPressed() {
        return false;
    }

    public GoogleMapEngine() {
        this.isAttached = false;
        this.createFinish = false;
        this.viewReady = false;
        this.routePolyline = new ArrayList();
        this.customMarkers = new ArrayList();
        this.updateThrottleInterval = 1000L;
    }

    public GoogleMapEngine(OnLoadMapListener onLoadMapListener) {
        super(onLoadMapListener);
        this.isAttached = false;
        this.createFinish = false;
        this.viewReady = false;
        this.routePolyline = new ArrayList();
        this.customMarkers = new ArrayList();
        this.updateThrottleInterval = 1000L;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void attach(ViewGroup viewGroup) {
        if (this.isAttached) {
            return;
        }
        this.container = viewGroup;
        MapView mapView = new MapView(viewGroup.getContext());
        this.mapView = mapView;
        viewGroup.addView(mapView, new ViewGroup.LayoutParams(-1, -1));
        this.mapView.getMapAsync(new OnMapReadyCallback() { // from class: com.qianhe.yct.view.map.GoogleMapEngine$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.maps.OnMapReadyCallback
            public final void onMapReady(GoogleMap googleMap) {
                GoogleMapEngine.m2993$r8$lambda$uI95iK5AnxSzBjr0rYDjb6fYss(this.f$0, googleMap);
            }
        });
        this.mapView.getMapAsync(new OnMapReadyCallback() { // from class: com.qianhe.yct.view.map.GoogleMapEngine.1
            @Override // com.google.android.gms.maps.OnMapReadyCallback
            public void onMapReady(GoogleMap googleMap) {
            }
        });
        this.mapView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.qianhe.yct.view.map.GoogleMapEngine$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.viewReady = true;
            }
        });
        this.isAttached = true;
    }

    /* renamed from: $r8$lambda$uI95iK5-AnxSzBjr0rYDjb6fYss, reason: not valid java name */
    public static /* synthetic */ void m2993$r8$lambda$uI95iK5AnxSzBjr0rYDjb6fYss(final GoogleMapEngine googleMapEngine, GoogleMap googleMap) {
        googleMapEngine.googleMap = googleMap;
        googleMap.getUiSettings().setZoomControlsEnabled(false);
        googleMapEngine.googleMap.setOnMapLoadedCallback(new GoogleMap.OnMapLoadedCallback() { // from class: com.qianhe.yct.view.map.GoogleMapEngine$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.maps.GoogleMap.OnMapLoadedCallback
            public final void onMapLoaded() {
                GoogleMapEngine.m2992$r8$lambda$oLANNzpBe1YId86gB3xpH6yNU8(this.f$0);
            }
        });
        googleMapEngine.initMap();
    }

    /* renamed from: $r8$lambda$oLANNzpB-e1YId86gB3xpH6yNU8, reason: not valid java name */
    public static /* synthetic */ void m2992$r8$lambda$oLANNzpBe1YId86gB3xpH6yNU8(GoogleMapEngine googleMapEngine) {
        googleMapEngine.mapLoadFinish = true;
        OnLoadMapListener onLoadMapListener = googleMapEngine.onLoadMapListener;
        if (onLoadMapListener != null) {
            onLoadMapListener.onLoadMapResult(true);
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void detach(ViewGroup viewGroup) {
        MapView mapView = this.mapView;
        if (mapView != null) {
            viewGroup.removeView(mapView);
            this.mapView.onDestroy();
            this.mapView = null;
        }
        clearMarker();
        this.googleMap = null;
        this.isAttached = false;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onCreate(Bundle bundle) {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onCreate(bundle);
        }
        this.createFinish = true;
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onResume() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onResume();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onPause() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onPause();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onStart() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onStart();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onStop() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onStop();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onDestroy() {
        clearMarker();
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onDestroy();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void onLowMemory() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.onLowMemory();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void addMarkerOrRoute(GeoPoint geoPoint, GeoPoint geoPoint2) {
        if (this.googleMap == null) {
            return;
        }
        LatLng gcj02Position = getGcj02Position(geoPoint.lat, geoPoint.lng);
        if (geoPoint2 != null) {
            LatLng gcj02Position2 = getGcj02Position(geoPoint2.lat, geoPoint2.lng);
            this.googleMap.addPolyline(new PolylineOptions().add(gcj02Position, gcj02Position2).color(Color.parseColor("#8B4513")).width(6.0f).geodesic(true));
            this.googleMap.addMarker(new MarkerOptions().position(gcj02Position).icon(createMarkerBitmap("A", -16776961)));
            this.googleMap.addMarker(new MarkerOptions().position(gcj02Position2).icon(createMarkerBitmap("B", -65536)));
            return;
        }
        this.googleMap.addMarker(new MarkerOptions().position(gcj02Position).icon(createMarkerBitmap("", -65536)));
    }

    private int getMarkerColor(String str) {
        if ("A".equals(str)) {
            return -16776961;
        }
        if ("B".equals(str)) {
            return -65536;
        }
        if ("C".equals(str)) {
            return Color.parseColor("#28D25C");
        }
        return -7650029;
    }

    private BitmapDescriptor createMarkerBitmap(String str, int i) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(80, 80, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        paint.setColor(i);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(6.0f);
        canvas.drawCircle(40.0f, 40.0f, 30.0f, paint2);
        canvas.drawCircle(40.0f, 40.0f, 30.0f, paint);
        Paint paint3 = new Paint(1);
        paint3.setColor(-1);
        paint3.setTextSize(32.0f);
        paint3.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint3.getFontMetrics();
        canvas.drawText(str, 40.0f, 40.0f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint3);
        return BitmapDescriptorFactory.fromBitmap(bitmapCreateBitmap);
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void moveCamera(GeoPoint geoPoint, float f) {
        if (this.googleMap == null) {
            return;
        }
        this.googleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(getGcj02Position(geoPoint.lat, geoPoint.lng), f));
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void addPolyline(List<GeoPoint> list, boolean z) {
        addPolyline(list, z, null);
    }

    @Override // com.qianhe.yct.view.map.IMapEngineImpl, com.qianhe.yct.view.map.IMapEngine
    public void addPolyline(List<GeoPoint> list, boolean z, List<String> list2) {
        if (this.googleMap == null) {
            return;
        }
        PolylineOptions polylineOptions = new PolylineOptions();
        for (GeoPoint geoPoint : list) {
            polylineOptions.add(getGcj02Position(geoPoint.lat, geoPoint.lng));
        }
        this.googleMap.addPolyline(polylineOptions);
        ArrayList arrayList = new ArrayList();
        LatLngBounds.Builder builder = new LatLngBounds.Builder();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            GeoPoint geoPoint2 = list.get(i2);
            LatLng gcj02Position = getGcj02Position(geoPoint2.lat, geoPoint2.lng);
            String str = (list2 == null || i2 >= list2.size()) ? "P" + (i2 + 1) : list2.get(i2);
            Marker markerAddMarker = this.googleMap.addMarker(new MarkerOptions().position(gcj02Position).icon(createMarkerBitmap(str, getMarkerColor(str))).anchor(0.5f, 0.5f));
            if (markerAddMarker != null) {
                this.customMarkers.add(markerAddMarker);
            }
            arrayList.add(gcj02Position);
            builder.include(gcj02Position);
        }
        if (z) {
            while (i < arrayList.size()) {
                int i3 = i + 1;
                for (int i4 = i3; i4 < arrayList.size(); i4++) {
                    this.routePolyline.add(this.googleMap.addPolyline(new PolylineOptions().add((LatLng) arrayList.get(i)).add((LatLng) arrayList.get(i4)).color(Color.parseColor("#8B4513")).width(6.0f)));
                }
                i = i3;
            }
            return;
        }
        if (arrayList.size() > 1) {
            this.routePolyline.add(this.googleMap.addPolyline(new PolylineOptions().addAll(arrayList).color(Color.parseColor("#8B4513")).width(6.0f).geodesic(true)));
        }
    }

    private void clearPolyline() {
        List<Marker> list = this.customMarkers;
        if (list != null) {
            Iterator<Marker> it = list.iterator();
            while (it.hasNext()) {
                it.next().remove();
            }
            this.customMarkers.clear();
        }
        List<Polyline> list2 = this.routePolyline;
        if (list2 != null) {
            Iterator<Polyline> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().remove();
            }
            this.routePolyline.clear();
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void updateLocation(GeoPoint geoPoint, boolean z) {
        GoogleMap googleMap = this.googleMap;
        if (googleMap == null || googleMap == null) {
            return;
        }
        try {
            if (this.mapLoadFinish) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = jCurrentTimeMillis - this.lastUpdateTime;
                if (z || j >= this.updateThrottleInterval) {
                    this.lastUpdateTime = jCurrentTimeMillis;
                    LatLng gcj02Position = getGcj02Position(geoPoint.lat, geoPoint.lng);
                    if (z) {
                        this.googleMap.animateCamera(CameraUpdateFactory.newLatLngZoom(gcj02Position, 16.0f));
                    }
                    Marker marker = this.marker;
                    if (marker == null) {
                        this.marker = this.googleMap.addMarker(new MarkerOptions().position(gcj02Position).icon(BitmapDescriptorFactory.fromResource(R$drawable.marker_circle)).anchor(0.5f, 0.5f));
                    } else {
                        marker.setPosition(gcj02Position);
                    }
                    createBreathingEffect(gcj02Position);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private LatLng getGcj02Position(double d, double d2) {
        double[] dArrWgs84ToGcj02 = CoordTransform.wgs84ToGcj02(d, d2);
        return new LatLng(dArrWgs84ToGcj02[0], dArrWgs84ToGcj02[1]);
    }

    private void clearMarker() {
        Marker marker = this.marker;
        if (marker != null) {
            marker.remove();
            this.marker = null;
        }
        Circle circle = this.breathingCircle;
        if (circle != null) {
            circle.remove();
            this.breathingCircle = null;
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
    }

    private void createBreathingEffect(LatLng latLng) {
        if (this.breathingCircle == null) {
            this.breathingCircle = this.googleMap.addCircle(new CircleOptions().center(latLng).radius(10.0d).strokeColor(1426102783).fillColor(570464767).strokeWidth(2.0f));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(5.0f, 30.0f);
            this.animator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(1000L);
            this.animator.setRepeatCount(-1);
            this.animator.setRepeatMode(1);
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qianhe.yct.view.map.GoogleMapEngine$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    GoogleMapEngine.m2991$r8$lambda$MlgHoGtu6lNEyag8kfbLAFocZs(this.f$0, valueAnimator);
                }
            });
            this.animator.start();
        }
        this.breathingCircle.setCenter(latLng);
    }

    /* renamed from: $r8$lambda$MlgHoGtu6lNEyag8kfbLAF-ocZs, reason: not valid java name */
    public static /* synthetic */ void m2991$r8$lambda$MlgHoGtu6lNEyag8kfbLAFocZs(GoogleMapEngine googleMapEngine, ValueAnimator valueAnimator) {
        googleMapEngine.getClass();
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Circle circle = googleMapEngine.breathingCircle;
        if (circle != null) {
            circle.setRadius(fFloatValue);
        }
    }

    @Override // com.qianhe.yct.view.map.IMapEngine
    public void centerLocation(GeoPoint geoPoint) {
        if (this.googleMap == null) {
            return;
        }
        this.googleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(geoPoint.lat, geoPoint.lng), 15.0f));
    }

    private void initMap() {
        GoogleMap googleMap = this.googleMap;
        if (googleMap == null) {
            return;
        }
        googleMap.getUiSettings().setZoomControlsEnabled(false);
        this.googleMap.getUiSettings().setMyLocationButtonEnabled(false);
    }
}

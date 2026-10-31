package com.qianhe.yct.provider;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.location.CurrentLocationRequest;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.qianhe.baselib.utils.LogToFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NetworkLocationProvider {

    @Deprecated
    public static LocationCallback callback;
    private static NetworkLocationProvider instance;
    private Context appContext;
    private CachedLocation cachedLocation;
    private CancellationTokenSource fusedCancellation;
    private FusedLocationProviderClient fusedClient;
    private com.google.android.gms.location.LocationCallback fusedLocationCallback;
    private LocationManager locationManager;
    private Handler timeoutHandler;
    private final AtomicBoolean locating = new AtomicBoolean(false);
    private final AtomicBoolean delivered = new AtomicBoolean(false);
    private final CopyOnWriteArrayList<LocationCallback> pendingCallbacks = new CopyOnWriteArrayList<>();
    private final LocationListener networkLocationListener = new LocationListener() { // from class: com.qianhe.yct.provider.NetworkLocationProvider.2
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            LogToFile.i("系统定位成功: " + location.getProvider() + " " + location.getLatitude() + ", " + location.getLongitude());
            NetworkLocationProvider.this.deliverLocation(location, "网络定位");
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            LogToFile.i("定位状态改变: " + str + " status=" + i);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            LogToFile.i("定位服务已启用: " + str);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            LogToFile.i("定位服务已禁用: " + str);
        }
    };

    public interface LocationCallback {
        void onLocationFailed(String str);

        void onLocationReceived(double d, double d2, double d3, float f, String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class CachedLocation {
        final float accuracy;
        final double altitude;
        final double latitude;
        final double longitude;
        final String provider;

        CachedLocation(double d, double d2, double d3, float f, String str) {
            this.latitude = d;
            this.longitude = d2;
            this.altitude = d3;
            this.accuracy = f;
            this.provider = str;
        }
    }

    public static NetworkLocationProvider getInstance() {
        if (instance == null) {
            instance = new NetworkLocationProvider();
        }
        return instance;
    }

    private NetworkLocationProvider() {
    }

    public void getNetworkLocation(Context context, LocationCallback locationCallback) {
        Context applicationContext = context.getApplicationContext();
        if (locationCallback == null) {
            return;
        }
        ensureCachedFromPersisted(applicationContext);
        CachedLocation cachedLocation = this.cachedLocation;
        if (cachedLocation != null) {
            postNotifySuccess(locationCallback, cachedLocation);
            return;
        }
        if (!this.locating.get()) {
            this.delivered.set(false);
        }
        this.pendingCallbacks.add(locationCallback);
        if (this.locating.compareAndSet(false, true)) {
            this.delivered.set(false);
            this.appContext = applicationContext;
            this.locationManager = (LocationManager) applicationContext.getSystemService("location");
            this.timeoutHandler = new Handler(Looper.getMainLooper());
            if (this.locationManager == null) {
                finishWithFailure("定位服务不可用");
                return;
            }
            if (ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                finishWithFailure("没有网络定位权限");
                return;
            }
            boolean zIsProviderEnabled = this.locationManager.isProviderEnabled("network");
            boolean zHasAnyEnabledProvider = hasAnyEnabledProvider();
            if (!zIsProviderEnabled && !zHasAnyEnabledProvider && !needsEnhancedLocationCompat()) {
                finishWithFailure("网络定位服务不可用");
                return;
            }
            LogToFile.i("开始网络定位... 机型=" + Build.MANUFACTURER + " " + Build.MODEL + " network=" + zIsProviderEnabled + " providers=" + this.locationManager.getProviders(true));
            Location locationFindBestLastKnownLocation = findBestLastKnownLocation(300000L);
            if (locationFindBestLastKnownLocation != null) {
                deliverLocation(locationFindBestLastKnownLocation, "网络定位(缓存)");
                return;
            }
            Location locationFindBestLastKnownLocation2 = findBestLastKnownLocation(86400000L);
            if (locationFindBestLastKnownLocation2 != null) {
                deliverLocation(locationFindBestLastKnownLocation2, "网络定位(历史缓存)");
                return;
            }
            scheduleTimeout();
            if (needsEnhancedLocationCompat() && isGooglePlayServicesAvailable(applicationContext)) {
                requestFusedLocation(applicationContext);
            }
            requestNetworkSingleUpdate(zIsProviderEnabled);
        }
    }

    private void ensureCachedFromPersisted(Context context) throws NumberFormatException {
        if (this.cachedLocation != null) {
            return;
        }
        this.appContext = context;
        Location persistedLocation = readPersistedLocation();
        if (persistedLocation == null) {
            return;
        }
        this.cachedLocation = new CachedLocation(persistedLocation.getLatitude(), persistedLocation.getLongitude(), persistedLocation.getAltitude(), persistedLocation.getAccuracy(), "网络定位(本地缓存)");
    }

    private long getTimeoutMs() {
        return needsEnhancedLocationCompat() ? 25000L : 12000L;
    }

    private void scheduleTimeout() {
        this.timeoutHandler.removeCallbacksAndMessages(null);
        this.timeoutHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.provider.NetworkLocationProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws NumberFormatException {
                this.f$0.onLocationTimeout();
            }
        }, getTimeoutMs());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocationTimeout() throws NumberFormatException {
        if (this.delivered.get()) {
            return;
        }
        Location locationFindBestLastKnownLocation = findBestLastKnownLocation(86400000L);
        if (locationFindBestLastKnownLocation == null) {
            locationFindBestLastKnownLocation = findBestLastKnownLocation(Long.MAX_VALUE);
        }
        if (locationFindBestLastKnownLocation != null) {
            LogToFile.i("网络定位超时，使用兜底缓存: " + locationFindBestLastKnownLocation.getLatitude() + ", " + locationFindBestLastKnownLocation.getLongitude());
            deliverLocation(locationFindBestLastKnownLocation, "网络定位(超时缓存)");
            return;
        }
        Location persistedLocation = readPersistedLocation();
        if (persistedLocation != null) {
            LogToFile.i("网络定位超时，使用本地已存坐标: " + persistedLocation.getLatitude() + ", " + persistedLocation.getLongitude());
            deliverLocation(persistedLocation, "网络定位(本地缓存)");
            return;
        }
        finishWithFailure("网络定位超时");
    }

    private void requestNetworkSingleUpdate(boolean z) {
        if (z && ContextCompat.checkSelfPermission(this.appContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            Looper mainLooper = Looper.getMainLooper();
            try {
                this.locationManager.requestSingleUpdate("network", this.networkLocationListener, mainLooper);
            } catch (Exception e) {
                LogToFile.e("requestSingleUpdate(NETWORK) 失败: " + e.getMessage());
                if (needsEnhancedLocationCompat()) {
                    try {
                        this.locationManager.requestLocationUpdates("network", 1000L, 0.0f, this.networkLocationListener, mainLooper);
                    } catch (Exception e2) {
                        LogToFile.e("requestLocationUpdates(NETWORK) 失败: " + e2.getMessage());
                    }
                }
            }
        }
    }

    private void requestFusedLocation(Context context) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0 || ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            FusedLocationProviderClient fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(context);
            this.fusedClient = fusedLocationProviderClient;
            fusedLocationProviderClient.getLastLocation().addOnSuccessListener(new OnSuccessListener() { // from class: com.qianhe.yct.provider.NetworkLocationProvider$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    NetworkLocationProvider.m2711$r8$lambda$aNf2imVVImdEGbjz9fMMp8grH0(this.f$0, (Location) obj);
                }
            });
            if (Build.VERSION.SDK_INT >= 31) {
                this.fusedCancellation = new CancellationTokenSource();
                this.fusedClient.getCurrentLocation(new CurrentLocationRequest.Builder().setPriority(102).setDurationMillis(getTimeoutMs()).setMaxUpdateAgeMillis(300000L).build(), this.fusedCancellation.getToken()).addOnSuccessListener(new OnSuccessListener() { // from class: com.qianhe.yct.provider.NetworkLocationProvider$$ExternalSyntheticLambda2
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public final void onSuccess(Object obj) {
                        NetworkLocationProvider.m2709$r8$lambda$D_PljnBjn2v_CplyEn6IJfLIaQ(this.f$0, (Location) obj);
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.qianhe.yct.provider.NetworkLocationProvider$$ExternalSyntheticLambda3
                    @Override // com.google.android.gms.tasks.OnFailureListener
                    public final void onFailure(Exception exc) {
                        LogToFile.e("getCurrentLocation 失败: " + exc.getMessage());
                    }
                });
            } else {
                LocationRequest expirationDuration = LocationRequest.create().setPriority(102).setInterval(2000L).setFastestInterval(1000L).setNumUpdates(1).setExpirationDuration(getTimeoutMs());
                com.google.android.gms.location.LocationCallback locationCallback = new com.google.android.gms.location.LocationCallback() { // from class: com.qianhe.yct.provider.NetworkLocationProvider.1
                    @Override // com.google.android.gms.location.LocationCallback
                    public void onLocationResult(LocationResult locationResult) {
                        Location lastLocation = locationResult.getLastLocation();
                        if (lastLocation == null || NetworkLocationProvider.this.delivered.get()) {
                            return;
                        }
                        LogToFile.i("融合定位 updates: " + lastLocation.getLatitude() + ", " + lastLocation.getLongitude() + " 精度=" + lastLocation.getAccuracy() + "m");
                        NetworkLocationProvider.this.deliverLocation(lastLocation, "网络定位(融合)");
                    }
                };
                this.fusedLocationCallback = locationCallback;
                this.fusedClient.requestLocationUpdates(expirationDuration, locationCallback, Looper.getMainLooper());
            }
        }
    }

    /* renamed from: $r8$lambda$aNf2imVVImdEGb-jz9fMMp8grH0, reason: not valid java name */
    public static /* synthetic */ void m2711$r8$lambda$aNf2imVVImdEGbjz9fMMp8grH0(NetworkLocationProvider networkLocationProvider, Location location) {
        if (location == null) {
            networkLocationProvider.getClass();
            return;
        }
        if (networkLocationProvider.delivered.get()) {
            return;
        }
        LogToFile.i("融合定位 getLastLocation: " + location.getLatitude() + ", " + location.getLongitude());
        networkLocationProvider.deliverLocation(location, "网络定位(融合缓存)");
    }

    /* renamed from: $r8$lambda$D_PljnBjn2v_CplyEn6IJfLI-aQ, reason: not valid java name */
    public static /* synthetic */ void m2709$r8$lambda$D_PljnBjn2v_CplyEn6IJfLIaQ(NetworkLocationProvider networkLocationProvider, Location location) {
        if (location == null) {
            networkLocationProvider.getClass();
            return;
        }
        if (networkLocationProvider.delivered.get()) {
            return;
        }
        LogToFile.i("融合定位 getCurrentLocation: " + location.getLatitude() + ", " + location.getLongitude());
        networkLocationProvider.deliverLocation(location, "网络定位(融合)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverLocation(Location location, String str) {
        if (this.delivered.compareAndSet(false, true)) {
            cleanupUpdates();
            Handler handler = this.timeoutHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.cachedLocation = new CachedLocation(location.getLatitude(), location.getLongitude(), location.getAltitude(), location.getAccuracy(), str);
            LogToFile.i(str + " 已交付: " + location.getLatitude() + ", " + location.getLongitude());
            finishWithSuccess(this.cachedLocation);
        }
    }

    private void finishWithSuccess(CachedLocation cachedLocation) {
        List<LocationCallback> listDrainPendingCallbacks = drainPendingCallbacks();
        this.locating.set(false);
        Iterator<LocationCallback> it = listDrainPendingCallbacks.iterator();
        while (it.hasNext()) {
            notifySuccess(it.next(), cachedLocation);
        }
    }

    private void finishWithFailure(String str) {
        if (this.delivered.compareAndSet(false, true)) {
            cleanupUpdates();
            Handler handler = this.timeoutHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            LogToFile.e(str);
            List<LocationCallback> listDrainPendingCallbacks = drainPendingCallbacks();
            this.locating.set(false);
            this.delivered.set(false);
            Iterator<LocationCallback> it = listDrainPendingCallbacks.iterator();
            while (it.hasNext()) {
                notifyFailure(it.next(), str);
            }
        }
    }

    private List<LocationCallback> drainPendingCallbacks() {
        ArrayList arrayList = new ArrayList(this.pendingCallbacks);
        this.pendingCallbacks.clear();
        callback = null;
        return arrayList;
    }

    private void postNotifySuccess(final LocationCallback locationCallback, final CachedLocation cachedLocation) {
        if (locationCallback == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            notifySuccess(locationCallback, cachedLocation);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.qianhe.yct.provider.NetworkLocationProvider$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkLocationProvider.notifySuccess(locationCallback, cachedLocation);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifySuccess(LocationCallback locationCallback, CachedLocation cachedLocation) {
        if (locationCallback != null) {
            locationCallback.onLocationReceived(cachedLocation.latitude, cachedLocation.longitude, cachedLocation.altitude, cachedLocation.accuracy, cachedLocation.provider);
        }
    }

    private static void notifyFailure(LocationCallback locationCallback, String str) {
        if (locationCallback != null) {
            locationCallback.onLocationFailed(str);
        }
    }

    private Location findBestLastKnownLocation(long j) {
        Location location = null;
        if (this.locationManager == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<String> providers = this.locationManager.getProviders(true);
        if (providers == null) {
            return null;
        }
        for (String str : providers) {
            if (ContextCompat.checkSelfPermission(this.appContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                try {
                    Location lastKnownLocation = this.locationManager.getLastKnownLocation(str);
                    if (lastKnownLocation != null && (j >= Long.MAX_VALUE || jCurrentTimeMillis - lastKnownLocation.getTime() <= j)) {
                        if (location == null || lastKnownLocation.getAccuracy() < location.getAccuracy()) {
                            location = lastKnownLocation;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return location;
    }

    private boolean hasAnyEnabledProvider() {
        try {
            List<String> providers = this.locationManager.getProviders(true);
            if (providers != null) {
                if (!providers.isEmpty()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static boolean needsEnhancedLocationCompat() {
        String str = Build.MANUFACTURER;
        if (str == null) {
            str = "";
        }
        String str2 = Build.MODEL;
        String str3 = str2 != null ? str2 : "";
        if (str.contains("wheatek") && str3.contains("RT3")) {
            return true;
        }
        return (str.contains("CPDEVICE") && str3.contains("SPRING")) || str3.contains("RT3 Pro");
    }

    private static boolean isGooglePlayServicesAvailable(Context context) {
        return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0;
    }

    private Location readPersistedLocation() throws NumberFormatException {
        Context context = this.appContext;
        if (context == null) {
            return null;
        }
        String string = context.getSharedPreferences("sp", 0).getString("current_coords", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            String[] strArrSplit = string.split(",");
            if (strArrSplit.length < 2) {
                return null;
            }
            double d = Double.parseDouble(strArrSplit[0].trim());
            double d2 = Double.parseDouble(strArrSplit[1].trim());
            double d3 = strArrSplit.length > 2 ? Double.parseDouble(strArrSplit[2].trim()) : 0.0d;
            if (d2 == 0.0d && d == 0.0d) {
                return null;
            }
            Location location = new Location("persisted");
            location.setLatitude(d2);
            location.setLongitude(d);
            location.setAltitude(d3);
            location.setTime(System.currentTimeMillis());
            location.setAccuracy(5000.0f);
            return location;
        } catch (Exception e) {
            LogToFile.e("读取本地坐标失败: " + e.getMessage());
            return null;
        }
    }

    private void cleanupUpdates() {
        com.google.android.gms.location.LocationCallback locationCallback;
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            try {
                locationManager.removeUpdates(this.networkLocationListener);
            } catch (Exception unused) {
            }
        }
        FusedLocationProviderClient fusedLocationProviderClient = this.fusedClient;
        if (fusedLocationProviderClient != null && (locationCallback = this.fusedLocationCallback) != null) {
            fusedLocationProviderClient.removeLocationUpdates(locationCallback);
            this.fusedLocationCallback = null;
        }
        CancellationTokenSource cancellationTokenSource = this.fusedCancellation;
        if (cancellationTokenSource != null) {
            cancellationTokenSource.cancel();
            this.fusedCancellation = null;
        }
    }

    public void stopLocationUpdates() {
        cleanupUpdates();
        Handler handler = this.timeoutHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.delivered.set(true);
        this.locating.set(false);
        drainPendingCallbacks();
    }

    public void reset() {
        stopLocationUpdates();
        this.delivered.set(false);
        this.locating.set(false);
        callback = null;
    }
}

package com.qianhe.yct.view.map;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MapController extends BaseMapController {
    public void updateLocation(GeoPoint geoPoint, boolean z) {
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.updateLocation(geoPoint, z);
        }
    }

    public void centerLocation(GeoPoint geoPoint) {
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.centerLocation(geoPoint);
        }
    }

    public void addMarker(GeoPoint geoPoint) {
        addMarkerOrRoute(geoPoint, null);
    }

    public void addMarkerOrRoute(GeoPoint geoPoint, GeoPoint geoPoint2) {
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.addMarkerOrRoute(geoPoint, geoPoint2);
        }
    }

    public void addPolyline(List<GeoPoint> list) {
        addPolyline(list, false);
    }

    public void addPolyline(List<GeoPoint> list, boolean z) {
        addPolyline(list, z, null);
    }

    public void addPolyline(List<GeoPoint> list, boolean z, List<String> list2) {
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.addPolyline(list, z, list2);
        }
    }
}

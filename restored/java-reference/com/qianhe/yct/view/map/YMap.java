package com.qianhe.yct.view.map;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.view.ViewGroup;
import com.qianhe.yct.utils.LocationUtils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class YMap {
    private boolean callOnCreateMethod;
    private boolean callOnResumeMethod;
    private boolean callOnStartMethod;
    private Context context;
    private IMapEngine imapEngine;
    private BaseMapController mapController;
    private OnLoadMapListener onLoadMapListener;
    private Bundle pendingState;
    private ViewGroup viewGroup;
    private boolean init = false;
    private boolean autoCheck = true;

    public boolean init(ViewGroup viewGroup) {
        return init(viewGroup, null, null);
    }

    public boolean init(ViewGroup viewGroup, GeoPoint geoPoint) {
        return init(viewGroup, null, geoPoint);
    }

    public boolean init(ViewGroup viewGroup, YMapType yMapType) {
        return init(viewGroup, yMapType, null);
    }

    private boolean init(ViewGroup viewGroup, YMapType yMapType, GeoPoint geoPoint) {
        if (this.init) {
            return true;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalArgumentException("This method must be called on the main thread.");
        }
        if (viewGroup == null) {
            return false;
        }
        this.context = viewGroup.getContext();
        this.viewGroup = viewGroup;
        if (yMapType == null) {
            yMapType = YMapType.TianDiTu;
            if (this.autoCheck && geoPoint != null && !LocationUtils.isChinaMainland(geoPoint.lat, geoPoint.lng)) {
                yMapType = YMapType.GOOGLEMAP;
            }
        }
        int i = AnonymousClass1.$SwitchMap$com$qianhe$yct$view$map$YMapType[yMapType.ordinal()];
        if (i == 1) {
            this.imapEngine = new TianDiTuEngine(this.onLoadMapListener);
        } else if (i == 2) {
            this.imapEngine = new GoogleMapEngine(this.onLoadMapListener);
        }
        BaseMapController baseMapController = this.mapController;
        if (baseMapController != null) {
            baseMapController.setImapEngine(this.imapEngine);
        }
        this.imapEngine.attach(this.viewGroup);
        if (this.callOnCreateMethod) {
            this.imapEngine.onCreate(this.pendingState);
        }
        if (this.callOnStartMethod) {
            this.imapEngine.onStart();
        }
        if (this.callOnResumeMethod) {
            this.imapEngine.onResume();
        }
        this.init = true;
        return true;
    }

    /* renamed from: com.qianhe.yct.view.map.YMap$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$qianhe$yct$view$map$YMapType;

        static {
            int[] iArr = new int[YMapType.values().length];
            $SwitchMap$com$qianhe$yct$view$map$YMapType = iArr;
            try {
                iArr[YMapType.TianDiTu.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$qianhe$yct$view$map$YMapType[YMapType.GOOGLEMAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public boolean isInit() {
        return this.init;
    }

    public void replaceMapType(YMapType yMapType) {
        if (this.viewGroup == null) {
            throw new IllegalArgumentException("Not init the YMap.");
        }
        int i = AnonymousClass1.$SwitchMap$com$qianhe$yct$view$map$YMapType[yMapType.ordinal()];
        if (i == 1) {
            IMapEngine iMapEngine = this.imapEngine;
            if (iMapEngine != null && (iMapEngine instanceof TianDiTuEngine)) {
                return;
            }
            iMapEngine.detach(this.viewGroup);
            this.imapEngine = new TianDiTuEngine(this.onLoadMapListener);
        } else if (i == 2) {
            IMapEngine iMapEngine2 = this.imapEngine;
            if (iMapEngine2 != null && (iMapEngine2 instanceof GoogleMapEngine)) {
                return;
            }
            iMapEngine2.detach(this.viewGroup);
            this.imapEngine = new GoogleMapEngine(this.onLoadMapListener);
        }
        BaseMapController baseMapController = this.mapController;
        if (baseMapController != null) {
            baseMapController.setImapEngine(this.imapEngine);
        }
        this.imapEngine.attach(this.viewGroup);
        if (this.callOnCreateMethod) {
            this.imapEngine.onCreate(this.pendingState);
        }
        if (this.callOnStartMethod) {
            this.imapEngine.onStart();
        }
        if (this.callOnResumeMethod) {
            this.imapEngine.onResume();
        }
    }

    public void onCreate(Bundle bundle) {
        this.callOnCreateMethod = true;
        this.pendingState = bundle;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onCreate(bundle);
        }
    }

    public void onStart() {
        this.callOnStartMethod = true;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onStart();
        }
    }

    public void onResume() {
        this.callOnResumeMethod = true;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onResume();
        }
    }

    public void onPause() {
        this.callOnResumeMethod = false;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onPause();
        }
    }

    public void onStop() {
        this.callOnStartMethod = false;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onStop();
        }
    }

    public void onDestroy() {
        this.callOnCreateMethod = false;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onDestroy();
        }
    }

    public void onLowMemory() {
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.onLowMemory();
        }
    }

    public boolean onBackPressed() {
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            return iMapEngine.onBackPressed();
        }
        return false;
    }

    public void setVisibility(int i) {
        ViewGroup viewGroup = this.viewGroup;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    public int getVisibility() {
        ViewGroup viewGroup = this.viewGroup;
        if (viewGroup != null) {
            return viewGroup.getVisibility();
        }
        return -1;
    }

    public boolean setMapController(BaseMapController baseMapController) {
        if (baseMapController == null) {
            return false;
        }
        this.mapController = baseMapController;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine == null) {
            return true;
        }
        baseMapController.setImapEngine(iMapEngine);
        return true;
    }

    public void setOnLoadMapListener(OnLoadMapListener onLoadMapListener) {
        this.onLoadMapListener = onLoadMapListener;
        IMapEngine iMapEngine = this.imapEngine;
        if (iMapEngine != null) {
            iMapEngine.setOnLoadMapListener(onLoadMapListener);
        }
    }
}

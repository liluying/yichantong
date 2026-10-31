.class public interface abstract Lcom/qianhe/yct/view/map/IMapEngine;
.super Ljava/lang/Object;
.source "IMapEngine.java"


# virtual methods
.method public abstract addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V
.end method

.method public abstract addPolyline(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract addPolyline(Ljava/util/List;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract attach(Landroid/view/ViewGroup;)V
.end method

.method public abstract centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V
.end method

.method public abstract detach(Landroid/view/ViewGroup;)V
.end method

.method public abstract moveCamera(Lcom/qianhe/yct/view/map/GeoPoint;F)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
.end method

.method public abstract updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V
.end method

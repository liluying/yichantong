.class public Lcom/qianhe/yct/view/map/GaoDeEngine;
.super Lcom/qianhe/yct/view/map/IMapEngineImpl;
.source "GaoDeEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/IMapEngineImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/map/IMapEngineImpl;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    return-void
.end method


# virtual methods
.method public addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 0

    .line 0
    return-void
.end method

.method public addPolyline(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;Z)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public attach(Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    return-void
.end method

.method public centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 0

    .line 0
    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    return-void
.end method

.method public moveCamera(Lcom/qianhe/yct/view/map/GeoPoint;F)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 0
    return-void
.end method

.method public updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V
    .locals 0

    .line 0
    return-void
.end method

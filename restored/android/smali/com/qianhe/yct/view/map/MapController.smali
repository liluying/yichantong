.class public Lcom/qianhe/yct/view/map/MapController;
.super Lcom/qianhe/yct/view/map/BaseMapController;
.source "MapController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/BaseMapController;-><init>()V

    return-void
.end method


# virtual methods
.method public addMarker(Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/view/map/MapController;->addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V

    return-void
.end method

.method public addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/qianhe/yct/view/map/BaseMapController;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/view/map/IMapEngine;->addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V

    :cond_0
    return-void
.end method

.method public addPolyline(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/view/map/MapController;->addPolyline(Ljava/util/List;Z)V

    return-void
.end method

.method public addPolyline(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/view/map/GeoPoint;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/view/map/MapController;->addPolyline(Ljava/util/List;ZLjava/util/List;)V

    return-void
.end method

.method public addPolyline(Ljava/util/List;ZLjava/util/List;)V
    .locals 1
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

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/view/map/BaseMapController;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2, p3}, Lcom/qianhe/yct/view/map/IMapEngine;->addPolyline(Ljava/util/List;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/qianhe/yct/view/map/BaseMapController;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/qianhe/yct/view/map/IMapEngine;->centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V

    :cond_0
    return-void
.end method

.method public updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/qianhe/yct/view/map/BaseMapController;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/view/map/IMapEngine;->updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V

    :cond_0
    return-void
.end method

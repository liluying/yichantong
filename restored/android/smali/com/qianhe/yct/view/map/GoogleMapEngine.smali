.class Lcom/qianhe/yct/view/map/GoogleMapEngine;
.super Lcom/qianhe/yct/view/map/IMapEngineImpl;
.source "GoogleMapEngine.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private breathingCircle:Lcom/google/android/gms/maps/model/Circle;

.field private container:Landroid/view/ViewGroup;

.field private createFinish:Z

.field private customMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private isAttached:Z

.field private lastUpdateTime:J

.field private mapLoadFinish:Z

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field routePolyline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private updateThrottleInterval:J

.field private viewReady:Z


# direct methods
.method public static synthetic $r8$lambda$MlgHoGtu6lNEyag8kfbLAF-ocZs(Lcom/qianhe/yct/view/map/GoogleMapEngine;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 501
    iget-object p0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->breathingCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz p0, :cond_0

    float-to-double v0, p1

    .line 502
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$buIWZPslwajsIBC6lMvOO2fLo0k(Lcom/qianhe/yct/view/map/GoogleMapEngine;Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->viewReady:Z

    return-void
.end method

.method public static synthetic $r8$lambda$oLANNzpB-e1YId86gB3xpH6yNU8(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapLoadFinish:Z

    .line 71
    iget-object p0, p0, Lcom/qianhe/yct/view/map/IMapEngineImpl;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0, v0}, Lcom/qianhe/yct/view/map/OnLoadMapListener;->onLoadMapResult(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$uI95iK5-AnxSzBjr0rYDjb6fYss(Lcom/qianhe/yct/view/map/GoogleMapEngine;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 75
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->initMap()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/IMapEngineImpl;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->isAttached:Z

    .line 42
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createFinish:Z

    .line 44
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->viewReady:Z

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->routePolyline:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->customMarkers:Ljava/util/List;

    const-wide/16 v0, 0x3e8

    .line 374
    iput-wide v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->updateThrottleInterval:J

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/map/IMapEngineImpl;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->isAttached:Z

    .line 42
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createFinish:Z

    .line 44
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->viewReady:Z

    .line 264
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->routePolyline:Ljava/util/List;

    .line 265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->customMarkers:Ljava/util/List;

    const-wide/16 v0, 0x3e8

    .line 374
    iput-wide v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->updateThrottleInterval:J

    return-void
.end method

.method private clearMarker()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->marker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 461
    iput-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->breathingCircle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 466
    iput-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->breathingCircle:Lcom/google/android/gms/maps/model/Circle;

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 471
    iput-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method private clearPolyline()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->customMarkers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 357
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->customMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->routePolyline:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_1

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->routePolyline:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method private createBreathingEffect(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->breathingCircle:Lcom/google/android/gms/maps/model/Circle;

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 487
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 488
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const v2, 0x550099ff

    .line 489
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const v2, 0x220099ff

    .line 490
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 491
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->breathingCircle:Lcom/google/android/gms/maps/model/Circle;

    const/4 v0, 0x2

    .line 494
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 496
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 497
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 499
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 506
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->breathingCircle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method private createMarkerBitmap(Ljava/lang/String;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 7

    const/16 v0, 0x50

    .line 222
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 226
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    .line 230
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40c00000    # 6.0f

    .line 232
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v6, 0x41f00000    # 30.0f

    .line 235
    invoke-virtual {v1, v5, v5, v6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    invoke-virtual {v1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 240
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x42000000    # 32.0f

    .line 241
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 244
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 245
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    sub-float v2, v5, v3

    .line 247
    invoke-virtual {v1, p1, v5, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    .line 453
    invoke-static {p1, p2, p3, p4}, Lcom/qianhe/yct/view/map/CoordTransform;->wgs84ToGcj02(DD)[D

    move-result-object p1

    .line 454
    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    const/4 p3, 0x0

    aget-wide p3, p1, p3

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object p2
.end method

.method private getMarkerColor(Ljava/lang/String;)I
    .locals 1

    .line 209
    const-string v0, "A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xffff01

    return p1

    .line 212
    :cond_0
    const-string v0, "B"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, -0x10000

    return p1

    .line 215
    :cond_1
    const-string v0, "C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 216
    const-string p1, "#28D25C"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const p1, -0x74baed

    return p1
.end method

.method private initMap()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addMarkerOrRoute(Lcom/qianhe/yct/view/map/GeoPoint;Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 6

    const/4 v0, 0x1

    .line 162
    iget-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v3, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    const/high16 v1, -0x10000

    if-eqz p2, :cond_1

    .line 167
    iget-wide v2, p2, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v4, p2, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    .line 169
    iget-object v2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/maps/model/LatLng;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v0

    .line 170
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    const-string v4, "#8B4513"

    .line 171
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    .line 172
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 169
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 177
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const-string v2, "A"

    const v3, -0xffff01

    .line 178
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createMarkerBitmap(Ljava/lang/String;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 182
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const-string v0, "B"

    .line 183
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createMarkerBitmap(Ljava/lang/String;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    return-void

    .line 199
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const-string v0, ""

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createMarkerBitmap(Ljava/lang/String;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 199
    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

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

    .line 269
    invoke-virtual {p0, p1, p2, v0}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->addPolyline(Ljava/util/List;ZLjava/util/List;)V

    return-void
.end method

.method public addPolyline(Ljava/util/List;ZLjava/util/List;)V
    .locals 9
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

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 276
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/view/map/GeoPoint;

    .line 279
    iget-wide v3, v2, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v5, v2, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 288
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 290
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/view/map/GeoPoint;

    .line 291
    iget-wide v5, v4, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v7, v4, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    if-eqz p3, :cond_2

    .line 292
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    :goto_2
    iget-object v6, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 296
    invoke-virtual {v7, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 297
    invoke-direct {p0, v5}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getMarkerColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createMarkerBitmap(Ljava/lang/String;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    const/high16 v7, 0x3f000000    # 0.5f

    .line 298
    invoke-virtual {v5, v7, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 294
    invoke-virtual {v6, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 302
    iget-object v6, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->customMarkers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/high16 p1, 0x40c00000    # 6.0f

    .line 309
    const-string p3, "#8B4513"

    if-eqz p2, :cond_6

    .line 311
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_7

    add-int/lit8 p2, v2, 0x1

    move v1, p2

    .line 312
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 314
    iget-object v3, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 317
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 318
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 319
    invoke-virtual {v4, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 314
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v3

    .line 322
    iget-object v4, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->routePolyline:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v2, p2

    goto :goto_3

    .line 328
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_7

    .line 329
    iget-object p2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->routePolyline:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 331
    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 332
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p3

    .line 333
    invoke-virtual {p3, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 334
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    .line 329
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    return-void
.end method

.method public attach(Landroid/view/ViewGroup;)V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->isAttached:Z

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->container:Landroid/view/ViewGroup;

    .line 60
    new-instance v0, Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 61
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    new-instance v0, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    new-instance v0, Lcom/qianhe/yct/view/map/GoogleMapEngine$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine$1;-><init>(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    new-instance v0, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->isAttached:Z

    return-void
.end method

.method public centerLocation(Lcom/qianhe/yct/view/map/GeoPoint;)V
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v3, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 517
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41700000    # 15.0f

    .line 518
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 517
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 97
    iput-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->clearMarker()V

    .line 100
    iput-object v1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->isAttached:Z

    return-void
.end method

.method public moveCamera(Lcom/qianhe/yct/view/map/GeoPoint;F)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v2, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 259
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 258
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createFinish:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->clearMarker()V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onStop()V

    :cond_0
    return-void
.end method

.method public updateLocation(Lcom/qianhe/yct/view/map/GeoPoint;Z)V
    .locals 7

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 386
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->mapLoadFinish:Z

    if-nez v0, :cond_2

    goto :goto_3

    .line 398
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    iget-wide v2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->lastUpdateTime:J

    sub-long v2, v0, v2

    if-nez p2, :cond_4

    .line 404
    iget-wide v4, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->updateThrottleInterval:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    goto :goto_3

    .line 407
    :cond_3
    iput-wide v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->lastUpdateTime:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 409
    :cond_4
    iput-wide v0, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->lastUpdateTime:J

    .line 412
    :goto_0
    iget-wide v0, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v2, p1, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->getGcj02Position(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p2, :cond_5

    .line 416
    iget-object p2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v0, 0x41800000    # 16.0f

    .line 417
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 416
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 420
    :cond_5
    iget-object p2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-nez p2, :cond_6

    .line 427
    iget-object p2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 429
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->marker_circle:I

    .line 430
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 431
    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 427
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine;->marker:Lcom/google/android/gms/maps/model/Marker;

    goto :goto_1

    .line 434
    :cond_6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 438
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/map/GoogleMapEngine;->createBreathingEffect(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 441
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

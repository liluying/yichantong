.class public Lcom/qianhe/yct/view/map/YMap;
.super Ljava/lang/Object;
.source "YMap.java"


# instance fields
.field private autoCheck:Z

.field private callOnCreateMethod:Z

.field private callOnResumeMethod:Z

.field private callOnStartMethod:Z

.field private context:Landroid/content/Context;

.field private imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

.field private init:Z

.field private mapController:Lcom/qianhe/yct/view/map/BaseMapController;

.field private onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

.field private pendingState:Landroid/os/Bundle;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->init:Z

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->autoCheck:Z

    return-void
.end method

.method private init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/YMapType;Lcom/qianhe/yct/view/map/GeoPoint;)Z
    .locals 6

    .line 61
    iget-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->init:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_a

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->context:Landroid/content/Context;

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    if-nez p2, :cond_3

    .line 79
    sget-object p2, Lcom/qianhe/yct/view/map/YMapType;->TianDiTu:Lcom/qianhe/yct/view/map/YMapType;

    .line 80
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->autoCheck:Z

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 81
    iget-wide v2, p3, Lcom/qianhe/yct/view/map/GeoPoint;->lat:D

    iget-wide v4, p3, Lcom/qianhe/yct/view/map/GeoPoint;->lng:D

    invoke-static {v2, v3, v4, v5}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    sget-object p2, Lcom/qianhe/yct/view/map/YMapType;->GOOGLEMAP:Lcom/qianhe/yct/view/map/YMapType;

    .line 89
    :cond_3
    :goto_0
    sget-object p1, Lcom/qianhe/yct/view/map/YMap$1;->$SwitchMap$com$qianhe$yct$view$map$YMapType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_1

    .line 95
    :cond_4
    new-instance p1, Lcom/qianhe/yct/view/map/GoogleMapEngine;

    iget-object p2, p0, Lcom/qianhe/yct/view/map/YMap;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    invoke-direct {p1, p2}, Lcom/qianhe/yct/view/map/GoogleMapEngine;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    goto :goto_1

    .line 91
    :cond_5
    new-instance p1, Lcom/qianhe/yct/view/map/TianDiTuEngine;

    iget-object p2, p0, Lcom/qianhe/yct/view/map/YMap;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    invoke-direct {p1, p2}, Lcom/qianhe/yct/view/map/TianDiTuEngine;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    .line 100
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->mapController:Lcom/qianhe/yct/view/map/BaseMapController;

    if-eqz p1, :cond_6

    .line 101
    iget-object p2, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/view/map/BaseMapController;->setImapEngine(Lcom/qianhe/yct/view/map/IMapEngine;)V

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    iget-object p2, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Lcom/qianhe/yct/view/map/IMapEngine;->attach(Landroid/view/ViewGroup;)V

    .line 106
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->callOnCreateMethod:Z

    if-eqz p1, :cond_7

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    iget-object p2, p0, Lcom/qianhe/yct/view/map/YMap;->pendingState:Landroid/os/Bundle;

    invoke-interface {p1, p2}, Lcom/qianhe/yct/view/map/IMapEngine;->onCreate(Landroid/os/Bundle;)V

    .line 109
    :cond_7
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->callOnStartMethod:Z

    if-eqz p1, :cond_8

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    invoke-interface {p1}, Lcom/qianhe/yct/view/map/IMapEngine;->onStart()V

    .line 112
    :cond_8
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->callOnResumeMethod:Z

    if-eqz p1, :cond_9

    .line 113
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    invoke-interface {p1}, Lcom/qianhe/yct/view/map/IMapEngine;->onResume()V

    .line 116
    :cond_9
    iput-boolean v1, p0, Lcom/qianhe/yct/view/map/YMap;->init:Z

    return v1

    .line 66
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method must be called on the main thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/YMapType;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/GeoPoint;)Z
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/YMapType;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/YMapType;)Z
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/map/YMap;->init(Landroid/view/ViewGroup;Lcom/qianhe/yct/view/map/YMapType;Lcom/qianhe/yct/view/map/GeoPoint;)Z

    move-result p1

    return p1
.end method

.method public isInit()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->init:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onBackPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->callOnCreateMethod:Z

    .line 169
    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->pendingState:Landroid/os/Bundle;

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1}, Lcom/qianhe/yct/view/map/IMapEngine;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->callOnCreateMethod:Z

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->callOnResumeMethod:Z

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->callOnResumeMethod:Z

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->callOnStartMethod:Z

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/qianhe/yct/view/map/YMap;->callOnStartMethod:Z

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onStop()V

    :cond_0
    return-void
.end method

.method public replaceMapType(Lcom/qianhe/yct/view/map/YMapType;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 132
    sget-object v0, Lcom/qianhe/yct/view/map/YMap$1;->$SwitchMap$com$qianhe$yct$view$map$YMapType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/qianhe/yct/view/map/GoogleMapEngine;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/view/map/IMapEngine;->detach(Landroid/view/ViewGroup;)V

    .line 146
    new-instance p1, Lcom/qianhe/yct/view/map/GoogleMapEngine;

    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    invoke-direct {p1, v0}, Lcom/qianhe/yct/view/map/GoogleMapEngine;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    goto :goto_0

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/qianhe/yct/view/map/TianDiTuEngine;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/view/map/IMapEngine;->detach(Landroid/view/ViewGroup;)V

    .line 138
    new-instance p1, Lcom/qianhe/yct/view/map/TianDiTuEngine;

    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    invoke-direct {p1, v0}, Lcom/qianhe/yct/view/map/TianDiTuEngine;-><init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    .line 149
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->mapController:Lcom/qianhe/yct/view/map/BaseMapController;

    if-eqz p1, :cond_4

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/BaseMapController;->setImapEngine(Lcom/qianhe/yct/view/map/IMapEngine;)V

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/view/map/IMapEngine;->attach(Landroid/view/ViewGroup;)V

    .line 154
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->callOnCreateMethod:Z

    if-eqz p1, :cond_5

    .line 155
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->pendingState:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/view/map/IMapEngine;->onCreate(Landroid/os/Bundle;)V

    .line 157
    :cond_5
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->callOnStartMethod:Z

    if-eqz p1, :cond_6

    .line 158
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    invoke-interface {p1}, Lcom/qianhe/yct/view/map/IMapEngine;->onStart()V

    .line 160
    :cond_6
    iget-boolean p1, p0, Lcom/qianhe/yct/view/map/YMap;->callOnResumeMethod:Z

    if-eqz p1, :cond_7

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    invoke-interface {p1}, Lcom/qianhe/yct/view/map/IMapEngine;->onResume()V

    :cond_7
    :goto_1
    return-void

    .line 129
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not init the YMap."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMapController(Lcom/qianhe/yct/view/map/BaseMapController;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->mapController:Lcom/qianhe/yct/view/map/BaseMapController;

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/BaseMapController;->setImapEngine(Lcom/qianhe/yct/view/map/IMapEngine;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/qianhe/yct/view/map/YMap;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p1}, Lcom/qianhe/yct/view/map/IMapEngine;->setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/view/map/YMap;->viewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.class public abstract Lcom/qianhe/yct/view/map/IMapEngineImpl;
.super Ljava/lang/Object;
.source "IMapEngineImpl.java"

# interfaces
.implements Lcom/qianhe/yct/view/map/IMapEngine;


# instance fields
.field protected onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/qianhe/yct/view/map/IMapEngineImpl;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    return-void
.end method


# virtual methods
.method public synthetic addPolyline(Ljava/util/List;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/view/map/IMapEngine$-CC;->$default$addPolyline(Lcom/qianhe/yct/view/map/IMapEngine;Ljava/util/List;ZLjava/util/List;)V

    return-void
.end method

.method public setOnLoadMapListener(Lcom/qianhe/yct/view/map/OnLoadMapListener;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/qianhe/yct/view/map/IMapEngineImpl;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    return-void
.end method

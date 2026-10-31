.class public abstract Lcom/qianhe/yct/view/map/BaseMapController;
.super Ljava/lang/Object;
.source "BaseMapController.java"


# instance fields
.field protected imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected setImapEngine(Lcom/qianhe/yct/view/map/IMapEngine;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/qianhe/yct/view/map/BaseMapController;->imapEngine:Lcom/qianhe/yct/view/map/IMapEngine;

    return-void
.end method

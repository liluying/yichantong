.class public Lcom/qh/xcad/IXCadParseService$Default;
.super Ljava/lang/Object;
.source "IXCadParseService.java"

# interfaces
.implements Lcom/qh/xcad/IXCadParseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/IXCadParseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/qh/xcad/ParseReply;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

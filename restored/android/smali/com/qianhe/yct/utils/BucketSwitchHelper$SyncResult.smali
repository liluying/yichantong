.class public Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;
.super Ljava/lang/Object;
.source "BucketSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/BucketSwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResult"
.end annotation


# instance fields
.field public bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field public calibParamsId:Ljava/lang/String;

.field public excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

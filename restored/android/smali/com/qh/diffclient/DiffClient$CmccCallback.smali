.class Lcom/qh/diffclient/DiffClient$CmccCallback;
.super Ljava/lang/Object;
.source "DiffClient.java"

# interfaces
.implements Lcom/cmcc/sy/hap/sdk/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/diffclient/DiffClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmccCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rtcmConsumer([BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 129
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/qh/diffclient/DiffClient;->-$$Nest$sminputCmccRtcmData([BI)V

    return-void
.end method

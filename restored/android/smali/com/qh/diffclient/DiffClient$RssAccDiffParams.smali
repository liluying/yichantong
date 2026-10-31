.class public final Lcom/qh/diffclient/DiffClient$RssAccDiffParams;
.super Ljava/lang/Object;
.source "DiffClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/diffclient/DiffClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RssAccDiffParams"
.end annotation


# instance fields
.field public coordSys:I

.field public ggaLine:Ljava/lang/String;

.field public shouldEncryptDiffData:Z

.field public sn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/qh/diffclient/DiffClient$RssAccDiffParams;->shouldEncryptDiffData:Z

    return-void
.end method

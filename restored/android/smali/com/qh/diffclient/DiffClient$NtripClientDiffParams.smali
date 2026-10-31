.class public final Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;
.super Ljava/lang/Object;
.source "DiffClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/diffclient/DiffClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NtripClientDiffParams"
.end annotation


# instance fields
.field public ggaLine:Ljava/lang/String;

.field public ggaUploadInterval:I

.field public host:Ljava/lang/String;

.field public mountPoint:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public sn:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 96
    iput v0, p0, Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;->ggaUploadInterval:I

    return-void
.end method

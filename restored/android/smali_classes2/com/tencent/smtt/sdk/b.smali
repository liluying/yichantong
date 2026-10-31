.class Lcom/tencent/smtt/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/DownloadListener;


# instance fields
.field private a:Lcom/tencent/smtt/sdk/DownloadListener;

.field private b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/b;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b;->b:Lcom/tencent/smtt/sdk/WebView;

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .line 0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/smtt/sdk/b;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    move-object p2, p1

    iget-object p1, p0, Lcom/tencent/smtt/sdk/b;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-wide p6, p7

    invoke-interface/range {p1 .. p7}, Lcom/tencent/smtt/sdk/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onDownloadVideo(Ljava/lang/String;JI)V
    .locals 0

    .line 0
    return-void
.end method

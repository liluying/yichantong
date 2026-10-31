.class Lcom/qianhe/yct/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/MainActivity;->startLogUploadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/MainActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$2;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 448
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity$2;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryNeedUploadLog(Landroid/content/Context;)V

    return-void
.end method

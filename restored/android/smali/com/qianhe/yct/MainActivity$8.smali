.class Lcom/qianhe/yct/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/MainActivity;->updateExcavatorData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/MainActivity;

.field final synthetic val$local:Lcom/qianhe/baselib/bean/ExcavatorEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 820
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$8;->this$0:Lcom/qianhe/yct/MainActivity;

    iput-object p2, p0, Lcom/qianhe/yct/MainActivity$8;->val$local:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 824
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity$8;->this$0:Lcom/qianhe/yct/MainActivity;

    iget-object v2, p0, Lcom/qianhe/yct/MainActivity$8;->val$local:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

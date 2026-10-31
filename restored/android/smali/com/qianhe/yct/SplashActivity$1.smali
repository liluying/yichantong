.class Lcom/qianhe/yct/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/SplashActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/SplashActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    const-class v3, Lcom/qianhe/yct/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity$1;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

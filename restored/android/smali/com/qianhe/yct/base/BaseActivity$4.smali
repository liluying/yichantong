.class Lcom/qianhe/yct/base/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$4;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 404
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$4;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$4;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    const-class v2, Lcom/qianhe/yct/activity/LocateInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

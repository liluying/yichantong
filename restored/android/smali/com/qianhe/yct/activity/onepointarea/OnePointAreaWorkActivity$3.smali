.class Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$3;
.super Ljava/lang/Object;
.source "OnePointAreaWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fgetisH5Pro(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    const-class v2, Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

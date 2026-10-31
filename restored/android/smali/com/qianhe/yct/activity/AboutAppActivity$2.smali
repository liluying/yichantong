.class Lcom/qianhe/yct/activity/AboutAppActivity$2;
.super Ljava/lang/Object;
.source "AboutAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/AboutAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/AboutAppActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/AboutAppActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$2;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 50
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$2;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$2;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    const-class v2, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

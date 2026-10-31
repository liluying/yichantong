.class Lcom/qianhe/yct/activity/UserManageActivity$6;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserManageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/UserManageActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserManageActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$6;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$6;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/UserManageActivity$6;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    const-class v2, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

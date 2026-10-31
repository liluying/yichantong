.class Lcom/qianhe/yct/activity/UserManageActivity$4;
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

    .line 87
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$4;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity$4;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    const-class v1, Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v0, "modify_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity$4;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

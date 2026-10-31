.class Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;
.super Ljava/lang/Object;
.source "ShareJoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareJoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    sget v0, Lcom/qianhe/yct/R$string;->clear_content:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/share/ShareJoinActivity$1$1;-><init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

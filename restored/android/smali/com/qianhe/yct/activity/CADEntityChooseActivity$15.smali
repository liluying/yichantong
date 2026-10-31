.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$15;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$15;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 981
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$15;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 0

    .line 0
    return-void
.end method

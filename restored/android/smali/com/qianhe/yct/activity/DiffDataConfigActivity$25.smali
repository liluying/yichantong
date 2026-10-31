.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$25;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->applyRadioConfigToBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$25;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 1141
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$25;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$25;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.class Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$15;
.super Ljava/lang/Object;
.source "BaseStationWorkModeConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$15;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 690
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$15;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$15;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

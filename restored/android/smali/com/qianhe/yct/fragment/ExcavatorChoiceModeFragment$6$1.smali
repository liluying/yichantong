.class Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6$1;
.super Ljava/lang/Object;
.source "ExcavatorChoiceModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    sget v2, Lcom/qianhe/yct/R$string;->confirm_sensor_status:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "requestKey"

    const-string v2, "clickaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->showSafely(Landroidx/fragment/app/FragmentManager;Landroid/os/Bundle;)V

    return-void
.end method

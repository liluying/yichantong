.class Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;
.super Ljava/lang/Object;
.source "BaseStationWorkModeConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 107
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 110
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_height_cutoff_angle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    const-string v10, "40\u00b0"

    const-string v11, "45\u00b0"

    const-string v2, "0\u00b0"

    const-string v3, "5\u00b0"

    const-string v4, "10\u00b0"

    const-string v5, "15\u00b0"

    const-string v6, "20\u00b0"

    const-string v7, "25\u00b0"

    const-string v8, "30\u00b0"

    const-string v9, "35\u00b0"

    invoke-static/range {v2 .. v11}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v1, "requestKey"

    const-string v2, "basecutoffangle"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

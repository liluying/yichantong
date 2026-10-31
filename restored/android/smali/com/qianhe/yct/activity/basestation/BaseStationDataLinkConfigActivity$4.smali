.class Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;
.super Ljava/lang/Object;
.source "BaseStationDataLinkConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 157
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_radio_protocol:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$mgetSelectableProtocolArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/RadioProtocolUtils;->buildProtocolNameList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 162
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$4;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 164
    const-string v1, "requestKey"

    sget-object v2, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->RADIO_PROTOCOL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

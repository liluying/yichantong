.class Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;
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

    .line 168
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 171
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->please_select_power:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetpowerArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fputpowerArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;[Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetpowerArray(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v2, v3

    .line 178
    sget-object v6, Lcom/qianhe/yct/enums/RadioPowerEnum;->HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v6, Lcom/qianhe/yct/R$string;->high:I

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/qianhe/yct/enums/RadioPowerEnum;->MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v6, Lcom/qianhe/yct/R$string;->middle:I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v6, Lcom/qianhe/yct/R$string;->low:I

    goto :goto_1

    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_3
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$5;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 182
    const-string v1, "requestKey"

    const-string v2, "radio_power"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

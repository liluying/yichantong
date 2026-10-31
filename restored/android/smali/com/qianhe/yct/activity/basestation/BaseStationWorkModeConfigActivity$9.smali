.class Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;
.super Ljava/lang/Object;
.source "BaseStationWorkModeConfigActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->initData()V
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

    .line 269
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 272
    const-string v0, "list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    const-string v1, "baseworkmode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 274
    const-string p1, "index"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 275
    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltBase:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltRover:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

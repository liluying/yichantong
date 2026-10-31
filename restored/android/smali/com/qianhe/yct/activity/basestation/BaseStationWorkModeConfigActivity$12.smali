.class Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;
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

    .line 305
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 308
    const-string v0, "list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 309
    const-string v1, "basestartmode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 310
    const-string p1, "index"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 312
    :try_start_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fputstartupChange(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltFixedStartup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;-><init>()V

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseProjectDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    sget v3, Lcom/qianhe/yct/R$string;->please_select_project:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "multiple"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string p2, "requestKey"

    const-string v1, "selectedproject"

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 324
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fputprojectEntity(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 325
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltFixedStartup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fputprojectEntity(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 328
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltFixedStartup:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 331
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9009\u62e9\u542f\u52a8\u6a21\u5f0f\u5f02\u5e38\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

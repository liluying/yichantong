.class Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;
.super Ljava/lang/Object;
.source "ExcavatorChoiceModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_measure_mode:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 163
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;)V

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Ljava/lang/Runnable;)V

    return-void

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$mgoNext(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    return-void
.end method

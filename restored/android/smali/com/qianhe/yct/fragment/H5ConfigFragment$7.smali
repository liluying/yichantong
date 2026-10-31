.class Lcom/qianhe/yct/fragment/H5ConfigFragment$7;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 182
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result p1

    .line 183
    iget-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->toMeter(ID)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 186
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->invalid_config:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$200(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 190
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/manage/AppConfigManager;->getPoleHeight()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 191
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/manage/AppConfigManager;->setPoleHeight(F)V

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$300(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

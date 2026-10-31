.class public Lcom/qianhe/yct/dialog/CalibrateDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "CalibrateDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

.field private gnssIssueDisplayMode:I

.field private headingAccuracyMode:Z

.field private headingErrorMaxDeg:F

.field private isH5Pro:Z

.field private latestHeadingDegreesError:Ljava/lang/Double;

.field private listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private manual:Z

.field private final runnable:Ljava/lang/Runnable;

.field private showingHeadingAccuracyTip:Z

.field private showingSensorOfflineTip:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/databinding/DialogCalibrateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheadingAccuracyMode(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingAccuracyMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIns(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mIns:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowingHeadingAccuracyTip(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingHeadingAccuracyTip:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmanual(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->manual:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    .line 376
    new-instance v0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private applyGnssIssueTip()Z
    .locals 5

    .line 229
    iget v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->move_open_area:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return v2

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v3, Lcom/qianhe/yct/R$string;->no_difference:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHint:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->check_mobile_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->move_open_area:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return v2
.end method

.method private applyHeadingAccuracyTip()V
    .locals 3

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    const/4 v1, 0x1

    .line 249
    iput-boolean v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingHeadingAccuracyTip:Z

    .line 250
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->heading_accuracy_poor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 254
    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateButtonLayout(Z)V

    .line 255
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateHeadingAccuracyValue()V

    return-void
.end method

.method private hideHeadingAccuracyValue()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHeadingAccuracy:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V

    const-string v3, "clickaction"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V

    const-string v3, "sensorscanlist"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private isHeadingDegreesOkFromHost()Z
    .locals 6

    .line 282
    iget v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingErrorMaxDeg:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->latestHeadingDegreesError:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->getLatestHeadingDegreesError()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 288
    :goto_0
    iget v3, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingErrorMaxDeg:F

    float-to-double v3, v3

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2

    .line 290
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-nez v0, :cond_4

    return v2

    .line 293
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->isHeadingDegreesOK()Z

    move-result v0

    return v0
.end method

.method private updateButtonLayout(Z)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvCancel:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 89
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 90
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p1, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/qianhe/baselib/utils/DpUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 96
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateGnssIssueDisplayMode(ZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 217
    iput v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 219
    iget p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x2

    .line 220
    iput p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->gnssIssueDisplayMode:I

    return-void
.end method

.method private updateHeadingAccuracyValue()V
    .locals 6

    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHeadingAccuracy:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingAccuracyMode:Z

    const/16 v3, 0x8

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingHeadingAccuracyTip:Z

    if-nez v2, :cond_1

    .line 261
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->latestHeadingDegreesError:Ljava/lang/Double;

    if-nez v2, :cond_2

    .line 265
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 268
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHeadingAccuracy:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->heading_accuracy_value:I

    iget-object v4, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->latestHeadingDegreesError:Ljava/lang/Double;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v2, v3, v5}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->isHeadingDegreesOkFromHost()Z

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHeadingAccuracy:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_3

    sget v0, Lcom/qianhe/yct/R$color;->green:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/qianhe/yct/R$color;->red:I

    :goto_0
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 105
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    const/4 p1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateButtonLayout(Z)V

    .line 110
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    new-instance v2, Lcom/qianhe/baselib/bean/GGAEntity;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/GGAEntity;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 119
    const-string v3, "quality"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    .line 120
    const-string v2, "headingAccuracyMode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingAccuracyMode:Z

    .line 121
    const-string p1, "headingErrorMaxDeg"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingErrorMaxDeg:F

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "tipColor"

    sget v4, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    const-string p1, "btnStr"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string v2, "cancelStr"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_3
    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingAccuracyMode:Z

    if-eqz p1, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->applyHeadingAccuracyTip()V

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->initData()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 425
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 426
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 414
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    if-eqz p1, :cond_2

    .line 419
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->manual:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onClose(ZZ)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsAhrs;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegreesError:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->latestHeadingDegreesError:Ljava/lang/Double;

    .line 300
    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingAccuracyMode:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingHeadingAccuracyTip:Z

    if-eqz p1, :cond_2

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateHeadingAccuracyValue()V

    .line 303
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->isHeadingDegreesOkFromHost()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mIns:Lcom/qianhe/baselib/bean/InsNavi;

    .line 314
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->headingAccuracyMode:Z

    if-eqz v0, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->applyHeadingAccuracyTip()V

    .line 317
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->isHeadingDegreesOkFromHost()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    :goto_0
    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->hideHeadingAccuracyValue()V

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingHeadingAccuracyTip:Z

    .line 326
    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateButtonLayout(Z)V

    .line 327
    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->isH5Pro:Z

    if-eqz v2, :cond_a

    .line 328
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 329
    :goto_1
    iget v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v4, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 330
    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateGnssIssueDisplayMode(ZZ)V

    .line 331
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->applyGnssIssueTip()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 332
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    return-void

    .line 335
    :cond_6
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    .line 336
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    .line 338
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->calibrate_device:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 341
    :cond_7
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 342
    iput-boolean v2, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    .line 344
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvHint:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->please_reconnect_sensor_or_recalibrate:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 347
    invoke-direct {p0, v2}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->updateButtonLayout(Z)V

    .line 348
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvSure:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->go_to_connect:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 349
    :cond_8
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    .line 350
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 353
    :cond_9
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->showingSensorOfflineTip:Z

    return-void

    .line 357
    :cond_a
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    .line 358
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->move_open_area:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 360
    :cond_b
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_c

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 364
    :cond_c
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCalibrateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCalibrateBinding;->tvContent:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->arm_tilt:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 212
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->isH5Pro:Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 388
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 389
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 396
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x3e99999a    # 0.3f

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$6;-><init>(Lcom/qianhe/yct/dialog/CalibrateDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    return-void
.end method

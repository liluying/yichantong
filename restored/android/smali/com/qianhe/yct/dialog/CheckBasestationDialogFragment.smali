.class public Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "CheckBasestationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

.field private listener:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->listener:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    .line 54
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v4, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    invoke-virtual {v4}, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 62
    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    const-string v6, "btnStr"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    const-string v7, "requestKey"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 65
    iget-object v7, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_2
    const-string v5, "baseProEntity"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 68
    const-string v6, "baseStationEntity"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/BaseStationEntity;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 70
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0.00000000"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0.000"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v8, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvOldCoords:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/qianhe/yct/R$string;->original_base_coords:I

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-virtual {v6, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v5, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v5, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-virtual {v7, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v8, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v8, v8, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvNewCoords:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/qianhe/yct/R$string;->current_base_coords:I

    invoke-virtual {p0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v4, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v4, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v4, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    invoke-virtual {v7, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-wide v8, v5, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    iget-wide v11, v5, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    iget-wide v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    new-array v13, v2, [D

    aput-wide v8, v13, v3

    aput-wide v11, v13, v1

    aput-wide v5, v13, v0

    iget-wide v5, v4, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    iget-wide v8, v4, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    iget-wide v11, v4, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    new-array v2, v2, [D

    aput-wide v5, v2, v3

    aput-wide v8, v2, v1

    aput-wide v11, v2, v0

    invoke-static {v13, v2}, Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;->calculateGeodeticDistance3D([D[D)D

    move-result-wide v0

    .line 75
    iget-object v2, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvDiffDistance:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/qianhe/yct/R$string;->distance_difference:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCheckBaseStationBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 118
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

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment;->listener:Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;

    return-void
.end method

.class public Lcom/qianhe/yct/fragment/HomeFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "HomeFragment.java"


# instance fields
.field private basePowerType:I

.field private baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

.field private binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

.field private hasDiff:Z

.field private homeAdapter:Lcom/qianhe/yct/adapter/HomeAdapter;

.field private homeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private isGridLayout:Z

.field private mMode:I

.field private powerPercent:I


# direct methods
.method public static synthetic $r8$lambda$-Td1OtU_1t-uk4x773pzit7OSeM(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 277
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    const-string v0, "deviceType"

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WZ0O2VwygPrqRoIwdPBsIeaJhw(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 333
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Af5_OGGuDxGM2JO-SWx2G09eCyc(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    .line 322
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static synthetic $r8$lambda$D-GMsbnXOvfreMMsHoFTOq5_lXs(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 369
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlyqtAL7p7Sj67FFl087etyiXUk(Lcom/qianhe/yct/fragment/HomeFragment;)V
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 207
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvExcavatorGroup:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 209
    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseStatus:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    if-gtz v2, :cond_1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v2, v2, v4

    float-to-int v2, v2

    :cond_1
    const/high16 v4, 0x41c00000    # 24.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 214
    iget-object v4, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    invoke-direct {p0, v4, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->getMeasuredHeight(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 215
    :goto_0
    iget-object v5, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvExcavatorGroup:Landroidx/cardview/widget/CardView;

    invoke-direct {p0, v5, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->getMeasuredHeight(Landroid/view/View;I)I

    move-result v0

    .line 217
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v4, v0

    int-to-double v6, v2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v6, v6, v8

    int-to-double v8, v3

    add-double/2addr v6, v8

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    mul-int v2, v2, v4

    add-int/2addr v2, v3

    .line 220
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_4

    .line 223
    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    invoke-direct {p0, v2, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->updateViewHeight(Landroid/view/View;I)V

    .line 224
    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvExcavatorGroup:Landroidx/cardview/widget/CardView;

    invoke-direct {p0, v2, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->updateViewHeight(Landroid/view/View;I)V

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_7

    .line 231
    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltEngineeringManager:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltEngineeringManager:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->getMeasuredHeight(Landroid/view/View;I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 232
    :goto_2
    iget-object v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->getMeasuredHeight(Landroid/view/View;I)I

    move-result v3

    .line 233
    iget-object v4, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 234
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->getMeasuredHeight(Landroid/view/View;I)I

    move-result v1

    .line 236
    :cond_6
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_7

    .line 238
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltEngineeringManager:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->updateViewHeight(Landroid/view/View;I)V

    .line 239
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->updateViewHeight(Landroid/view/View;I)V

    .line 240
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 241
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->updateViewHeight(Landroid/view/View;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static synthetic $r8$lambda$hdiXoV3O1z-Y5MszhiFyv9l2g4g(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 3

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 341
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 342
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p1

    const-class v0, Lcom/qianhe/yct/activity/BucketListActivity;

    if-eqz p1, :cond_0

    .line 343
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->getLastDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 346
    iget-object v2, p1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    iget-object p1, p1, Lcom/qianhe/yct/bean/DeviceInfo;->fmwVersion:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 348
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x69

    if-lt p1, v1, :cond_1

    .line 349
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->firmware_version_not_support_action:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    return-void

    .line 356
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hjvDmnEyS21brtzZBoEamMNflkQ(Lcom/qianhe/yct/fragment/HomeFragment;Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 4

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 550
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 551
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 554
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->dynamicAdjustCardHeight()V

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 557
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/qianhe/yct/R$string;->started:I

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    sget p1, Lcom/qianhe/yct/R$string;->not_started:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 559
    :cond_5
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, p1, :cond_8

    .line 560
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "obtain_difference_type"

    const-string v1, "bluetooth"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "radio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->hasDiff:Z

    .line 563
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DatalinkStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 564
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvDiffStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DatalinkStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/qianhe/yct/R$string;->difference_normal:I

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_7
    sget p1, Lcom/qianhe/yct/R$string;->no_difference:I

    goto :goto_4

    :goto_5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public static synthetic $r8$lambda$mw-Wc7fh6HTvApmEdpFEiNemx-A(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 286
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const-string v0, "deviceType"

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ra41B42RjnZARJklYNVnJr6qo6k(Lcom/qianhe/yct/fragment/HomeFragment;Lcom/qianhe/yct/bean/HomeItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/HomeFragment;->handleItemClick(Lcom/qianhe/yct/bean/HomeItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tE3WlaXOBZhWGmq_HsJxf2CMYEo(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 325
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 327
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tbz8RYElG6zqLfaOhWHV96gGmPE(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 377
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$z1BPKwM-USiqUuMS6ToMociRMeU(Lcom/qianhe/yct/fragment/HomeFragment;Landroid/view/View;)V
    .locals 2

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 361
    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethomeAdapter(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/yct/adapter/HomeAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeAdapter:Lcom/qianhe/yct/adapter/HomeAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgotoBaseStationConfigActivity(Lcom/qianhe/yct/fragment/HomeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->gotoBaseStationConfigActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveSort(Lcom/qianhe/yct/fragment/HomeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->saveSort()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->isGridLayout:Z

    return-void
.end method

.method private dynamicAdjustCardHeight()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMeasuredHeight(Landroid/view/View;I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 251
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    .line 252
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 253
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 255
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1
.end method

.method private gotoBaseStationConfigActivity()V
    .locals 4

    .line 413
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    const-string v1, "basic"

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->mMode:I

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->not_connected_basestation:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->go_to_connect:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/fragment/HomeFragment$3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/HomeFragment$3;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 415
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method private handleItemClick(Lcom/qianhe/yct/bean/HomeItem;)V
    .locals 3

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    const-string v1, "basic"

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/yct/bean/HomeItem;->getId()I

    move-result p1

    const-string v0, "proType"

    const-class v1, Lcom/qianhe/yct/activity/ProjectListActivity;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 504
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 499
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    const-string/jumbo v0, "showVerifyModeSelect"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 496
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->openGroupList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 478
    :pswitch_3
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 480
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->goto_login:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/HomeFragment$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/HomeFragment$4;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 475
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 472
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 469
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 466
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 463
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 460
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 457
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 454
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 451
    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 448
    :pswitch_d
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 445
    :pswitch_e
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 442
    :pswitch_f
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 507
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initHomeItems()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->initHomeItems(Z)V

    return-void
.end method

.method private initHomeItems(Z)V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_zp_new:I

    sget v3, Lcom/qianhe/yct/R$string;->leveling:I

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_sp_new:I

    sget v3, Lcom/qianhe/yct/R$string;->slope:I

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_new:I

    sget v3, Lcom/qianhe/yct/R$string;->ditch:I

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_dike_new:I

    sget v3, Lcom/qianhe/yct/R$string;->dike:I

    const/4 v4, 0x4

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_line_new:I

    sget v3, Lcom/qianhe/yct/R$string;->line:I

    const/4 v4, 0x5

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_poly_line:I

    sget v3, Lcom/qianhe/yct/R$string;->polyline:I

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_onepoint_area:I

    sget v3, Lcom/qianhe/yct/R$string;->one_point_area:I

    const/4 v4, 0x7

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_three_point_area:I

    sget v3, Lcom/qianhe/yct/R$string;->three_point_area:I

    const/16 v4, 0x8

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_siteleveling_new:I

    sget v3, Lcom/qianhe/yct/R$string;->site_leveling:I

    const/16 v4, 0x9

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_arbitraryline_new:I

    sget v3, Lcom/qianhe/yct/R$string;->arbitrary_line:I

    const/16 v4, 0xa

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_share_new:I

    sget v3, Lcom/qianhe/yct/R$string;->share:I

    const/16 v4, 0xd

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/qianhe/yct/bean/HomeItem;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_pointlib_new:I

    sget v3, Lcom/qianhe/yct/R$string;->coordinates_library:I

    const/16 v4, 0xe

    invoke-direct {v1, v4, v2, v3}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 145
    new-instance p1, Lcom/qianhe/yct/bean/HomeItem;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_verify_accuracy:I

    sget v2, Lcom/qianhe/yct/R$string;->verify_accuracy:I

    const/16 v3, 0xf

    invoke-direct {p1, v3, v1, v2}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    new-instance p1, Lcom/qianhe/yct/bean/HomeItem;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_params_conver:I

    sget v2, Lcom/qianhe/yct/R$string;->params_conver:I

    const/16 v3, 0x10

    invoke-direct {p1, v3, v1, v2}, Lcom/qianhe/yct/bean/HomeItem;-><init>(III)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "home_item_sort"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 153
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 155
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 156
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 158
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/bean/HomeItem;

    .line 164
    invoke-virtual {v5}, Lcom/qianhe/yct/bean/HomeItem;->getId()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 165
    iget-object v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/bean/HomeItem;

    .line 173
    iget-object v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/bean/HomeItem;

    .line 174
    invoke-virtual {v4}, Lcom/qianhe/yct/bean/HomeItem;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/qianhe/yct/bean/HomeItem;->getId()I

    move-result v5

    if-ne v4, v5, :cond_7

    goto :goto_3

    .line 179
    :cond_8
    iget-object v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 182
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    array-length p1, p1

    if-eq v0, p1, :cond_a

    .line 183
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->saveSort()V

    :cond_a
    return-void
.end method

.method private initLiveData()V
    .locals 3

    .line 548
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/MainActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/MainActivity;->observeGGA()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltLevelInfo:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseConfig:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$1;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseBatt:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltEngineeringManager:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltDeviceConnect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltDeviceConnect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltDatalinkStatus:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    new-instance v0, Lcom/qianhe/yct/adapter/HomeAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    new-instance v2, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/HomeFragment$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/adapter/HomeAdapter;-><init>(Ljava/util/List;Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeAdapter:Lcom/qianhe/yct/adapter/HomeAdapter;

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->rvHome:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 392
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->rvHome:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->isGridLayout:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 393
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->rvHome:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeAdapter:Lcom/qianhe/yct/adapter/HomeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 395
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/qianhe/yct/fragment/HomeFragment$2;

    const/16 v3, 0xf

    invoke-direct {v1, p0, v3, v2}, Lcom/qianhe/yct/fragment/HomeFragment$2;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;II)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 409
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->rvHome:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private isUseBase(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 539
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->baseSn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 541
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host_xfix:Ljava/lang/String;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "obtain_difference_type"

    const-string v1, "bluetooth"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "radio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private refreshHomeItems()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->refreshHomeItems(Z)V

    return-void
.end method

.method private refreshHomeItems(Z)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/HomeFragment;->initHomeItems(Z)V

    .line 119
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeAdapter:Lcom/qianhe/yct/adapter/HomeAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private refrshSensorBattState(II)V
    .locals 4

    .line 627
    iput p2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->powerPercent:I

    .line 628
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseBatt:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseBatt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->dynamicAdjustCardHeight()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseBatt:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseBatt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseBatt:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x14

    if-ge p2, v1, :cond_2

    const/high16 v2, -0x10000

    goto :goto_0

    :cond_2
    const/high16 v2, -0x1000000

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-ge p2, v1, :cond_4

    if-ne p1, v3, :cond_3

    .line 636
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_0_charge:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_0:I

    goto :goto_1

    :cond_4
    const/16 v0, 0x28

    if-ge p2, v0, :cond_6

    if-ne p1, v3, :cond_5

    .line 637
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_20_charge:I

    goto :goto_1

    :cond_5
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_20:I

    goto :goto_1

    :cond_6
    const/16 v0, 0x3c

    if-ge p2, v0, :cond_8

    if-ne p1, v3, :cond_7

    .line 638
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_40_charge:I

    goto :goto_1

    :cond_7
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_40:I

    goto :goto_1

    :cond_8
    const/16 v0, 0x50

    if-ge p2, v0, :cond_a

    if-ne p1, v3, :cond_9

    .line 639
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_60_charge:I

    goto :goto_1

    :cond_9
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_60:I

    goto :goto_1

    :cond_a
    const/16 v0, 0x64

    if-ge p2, v0, :cond_c

    if-ne p1, v3, :cond_b

    .line 640
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_80_charge:I

    goto :goto_1

    :cond_b
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_80:I

    goto :goto_1

    :cond_c
    if-ne p1, v3, :cond_d

    .line 641
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_100_charge:I

    goto :goto_1

    :cond_d
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_sensorbatt_100:I

    .line 642
    :goto_1
    iget-object p2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseBattState:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private saveSort()V
    .locals 5

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/qianhe/yct/fragment/HomeFragment;->homeItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/bean/HomeItem;

    invoke-virtual {v3}, Lcom/qianhe/yct/bean/HomeItem;->getId()I

    move-result v3

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "home_item_sort"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateViewHeight(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 262
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p2, :cond_1

    .line 263
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v0, "GET,FEATURES"

    invoke-direct {p2, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->initHomeItems()V

    .line 94
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->initView()V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result p2

    const-string v0, "mode"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->mMode:I

    .line 96
    iget-object p2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DeviceConnect:Landroid/widget/ImageView;

    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 97
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DatalinkStatus:Landroid/widget/ImageView;

    iget p2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->mMode:I

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v0

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DeviceConnect:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p2}, Lcom/qianhe/yct/application/YCTApplication;->getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;

    move-result-object p2

    iget p2, p2, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p2, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvDiffStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DatalinkStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/qianhe/yct/R$string;->difference_normal:I

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    sget p1, Lcom/qianhe/yct/R$string;->no_difference:I

    goto :goto_3

    :goto_4
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x4

    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->initLiveData()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseNetworkState:Landroid/widget/ImageView;

    const-string p2, "baseNetworkState"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 108
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 749
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    .line 751
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 738
    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DeviceConnect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 739
    :goto_1
    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->hasDiff:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->hasDiff:Z

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DatalinkStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 741
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvDiffStatus:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    sget v0, Lcom/qianhe/yct/R$string;->difference_normal:I

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->no_difference:I

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    if-ne v0, v2, :cond_4

    .line 743
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setAuthResult(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_b

    .line 572
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 573
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "obtain_difference_type"

    const-string v2, "bluetooth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 575
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    .line 576
    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->ACC:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 578
    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/HomeFragment;->isUseBase(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)Z

    move-result v1

    .line 579
    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v1, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget v1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 581
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_8

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    goto :goto_4

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->dynamicAdjustCardHeight()V

    .line 589
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->hasDiff:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 590
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->hasDiff:Z

    if-eqz v1, :cond_7

    sget v1, Lcom/qianhe/yct/R$string;->link_normal:I

    goto :goto_3

    :cond_7
    sget v1, Lcom/qianhe/yct/R$string;->link_down:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 582
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseStatus:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->link_down:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 592
    :goto_5
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->batt:I

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/HomeFragment;->refrshSensorBattState(II)V

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 594
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    if-nez v0, :cond_b

    .line 595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 596
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 598
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->hasDiff:Z

    if-eqz v0, :cond_a

    sget v0, Lcom/qianhe/yct/R$string;->not_connected:I

    goto :goto_6

    :cond_a
    sget v0, Lcom/qianhe/yct/R$string;->link_down:I

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    :goto_7
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Batt;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 605
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/Batt;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 606
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseBatt:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseBatt:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->dynamicAdjustCardHeight()V

    .line 611
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->basePowerType:I

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/Batt;->percent:I

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/HomeFragment;->refrshSensorBattState(II)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 728
    iget p1, p1, Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;->deviceModel:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 731
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivZhaopingyiICon:Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$drawable;->home_zhaopingyi_ex30:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void

    .line 729
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivZhaopingyiICon:Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$drawable;->home_zhaopingyi_h5pro:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 669
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v3, "NO_BASE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_3

    .line 673
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "EXCAVATOR2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->refreshHomeItems(Z)V

    .line 678
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "NO_NTRIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 679
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/manage/AppConfigManager;->setNtriptype(I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 682
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "firstConnect"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 684
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget p1, Lcom/qianhe/yct/R$string;->gogo_excavator_calibrate:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/qianhe/yct/fragment/HomeFragment$5;

    invoke-direct {v5, p0}, Lcom/qianhe/yct/fragment/HomeFragment$5;-><init>(Lcom/qianhe/yct/fragment/HomeFragment;)V

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileStateResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 618
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 619
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 620
    :cond_0
    iget p1, p1, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->type:I

    iput p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->basePowerType:I

    .line 621
    iget v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->powerPercent:I

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->refrshSensorBattState(II)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/WifiStateResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 703
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v3, :cond_2

    .line 704
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DeviceConnect:Landroid/widget/ImageView;

    sget-object v4, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v4

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 706
    :cond_2
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_5

    .line 707
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 708
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_3

    .line 709
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseNetworkState:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 710
    :cond_3
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .line 711
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->baseStaus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    .line 712
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltExcavatorManager:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBucketManager:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivH5DatalinkStatus:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 715
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvDiffStatus:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/qianhe/yct/R$string;->no_difference:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/HomeFragment;->refreshHomeItems(Z)V

    return-void

    .line 719
    :cond_4
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 720
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    :cond_5
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 512
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 513
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UNLOG,INS.AHRS"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v3, "mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->mMode:I

    .line 515
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "CALIBRATE,,GET_PARAM"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v5, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v6, "GET,MOBILE_STATUS"

    invoke-direct {v5, v1, v6}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 524
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getBaseStatus()Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object v0

    .line 526
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/HomeFragment;->isUseBase(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)Z

    move-result v1

    .line 527
    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->cvBaseGroup:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->powerType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->baseSn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 529
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->tvBaseStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/qianhe/yct/R$string;->link_normal:I

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget v0, Lcom/qianhe/yct/R$string;->not_connected:I

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->lltBaseStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->refreshHomeItems()V

    .line 534
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/HomeFragment;->dynamicAdjustCardHeight()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 270
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseState:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "baseSolState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentHomeBinding;->ivBaseNetworkState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "baseNetworkState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

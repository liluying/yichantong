.class public Lcom/qianhe/yct/base/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.java"


# instance fields
.field private loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

.field protected mSp:Landroid/content/SharedPreferences;

.field protected requestKey:Ljava/lang/String;

.field private softInputTouchDownX:F

.field private softInputTouchDownY:F

.field private softInputTouchMoved:Z

.field private tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

.field private toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;


# direct methods
.method public static synthetic $r8$lambda$xku6nomVPy2Jzyf2JBB1LXeKaFI(Lcom/qianhe/yct/base/BaseDialogFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->forceHideKeyboard()V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsoftInputTouchDownX(Lcom/qianhe/yct/base/BaseDialogFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->softInputTouchDownX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsoftInputTouchDownY(Lcom/qianhe/yct/base/BaseDialogFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->softInputTouchDownY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->softInputTouchMoved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputsoftInputTouchDownX(Lcom/qianhe/yct/base/BaseDialogFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->softInputTouchDownX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsoftInputTouchDownY(Lcom/qianhe/yct/base/BaseDialogFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->softInputTouchDownY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->softInputTouchMoved:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideSoftInputIfTouchOutside(Lcom/qianhe/yct/base/BaseDialogFragment;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->hideSoftInputIfTouchOutside(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSoftInputIfClickEditText(Lcom/qianhe/yct/base/BaseDialogFragment;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->showSoftInputIfClickEditText(FF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-void
.end method

.method private findEditTextInHierarchy(Landroid/view/View;FF)Landroid/widget/EditText;
    .locals 4

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->isTouchOnView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 495
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    check-cast p1, Landroid/widget/EditText;

    return-object p1

    :cond_1
    return-object v1

    .line 498
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 499
    check-cast p1, Landroid/view/ViewGroup;

    .line 501
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->isTouchOnView(Landroid/view/View;FF)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 504
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->findEditTextInHierarchy(Landroid/view/View;FF)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    .line 506
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-object v1
.end method

.method private findEditTextUnder(FF)Landroid/widget/EditText;
    .locals 2

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    .line 490
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->findEditTextInHierarchy(Landroid/view/View;FF)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method private forceHideKeyboard()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_2
    return-void
.end method

.method private hideSoftInputIfTouchOutside(FF)V
    .locals 2

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 423
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->findEditTextUnder(FF)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_3

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private isSoftInputVisible()Z
    .locals 10

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 458
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    const/4 v5, 0x1

    if-lt v3, v4, :cond_3

    .line 459
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 460
    invoke-static {}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v4

    invoke-static {v3, v4}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    .line 464
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 465
    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 467
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v3

    int-to-double v3, v3

    int-to-double v6, v0

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double v6, v6, v8

    cmpl-double v0, v3, v6

    if-lez v0, :cond_4

    return v5

    .line 471
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 472
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    :cond_5
    if-eqz v0, :cond_6

    .line 473
    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    :cond_6
    return v2
.end method

.method private isTouchOnView(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 479
    new-array v1, v1, [I

    .line 480
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 481
    aget v2, v1, v0

    int-to-float v3, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    const/4 p2, 0x1

    aget v1, v1, p2

    int-to-float v2, v1

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    return p2

    :cond_1
    :goto_0
    return v0
.end method

.method private showSoftInputIfClickEditText(FF)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->findEditTextUnder(FF)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isSoftInputVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    .line 449
    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelLoadingDialog()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected cancelTipDialog()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected isPad()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->notAllowRotateScreen()V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    .line 54
    new-instance p1, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 55
    new-instance p1, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 56
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    const-string v0, "requestKey"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->allowRotateScreen()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->allowRotateScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    new-instance p2, Lcom/qianhe/yct/base/BaseDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/base/BaseDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/base/BaseDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected setWindowsCallback(Landroid/view/Window;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/qianhe/yct/base/BaseDialogFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment$1;-><init>(Lcom/qianhe/yct/base/BaseDialogFragment;Landroid/view/Window$Callback;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_0
    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_2
    return-void
.end method

.method protected showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelTipDialog()V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "TipsDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string p1, "btnStr"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->tipsDialogFragment:Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-virtual {p1, p3}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method protected showToastDialog(Ljava/lang/String;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ToastDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

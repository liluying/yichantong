.class public Lcom/qianhe/yct/dialog/CollectingDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "CollectingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

.field private closeNotified:Z

.field private countDownSeconds:I

.field private downX:F

.field private downY:F

.field private listener:Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;

.field private manualCancel:Z

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gbNVmEPZudtTeO0P51qyb9RvIaI(Lcom/qianhe/yct/dialog/CollectingDialogFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->manualCancel:Z

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)Lcom/qianhe/yct/databinding/DialogCollectingBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountDownSeconds(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->countDownSeconds:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdownX(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->downX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdownY(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->downY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdownX(Lcom/qianhe/yct/dialog/CollectingDialogFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->downX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownY(Lcom/qianhe/yct/dialog/CollectingDialogFragment;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->downY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->countDownSeconds:I

    return-void
.end method

.method private notifyClose()V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->closeNotified:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->closeNotified:Z

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->listener:Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;

    if-eqz v0, :cond_1

    .line 182
    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->manualCancel:Z

    invoke-interface {v0, v1}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;->onClose(I)V

    :cond_1
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->manualCancel:Z

    return-void
.end method


# virtual methods
.method public cancelManually()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->manualCancel:Z

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->manualCancel:Z

    .line 175
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogCollectingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    .line 60
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogCollectingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 67
    :cond_0
    new-instance v1, Lcom/qianhe/yct/dialog/CollectingDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCollectingBinding;->tvTip:Landroid/widget/TextView;

    const-string/jumbo v3, "tip"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v2, "countDownSeconds"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->countDownSeconds:I

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogCollectingBinding;->tvCount:Landroid/widget/TextView;

    iget v2, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->countDownSeconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "%ss"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCollectingBinding;->tvEnd:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CollectingDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCollectingBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogCollectingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->startCollectTimer()V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 190
    invoke-virtual {p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->stopCollectTimer()V

    .line 191
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->notifyClose()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x3e99999a    # 0.3f

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->listener:Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;

    return-void
.end method

.method protected startCollectTimer()V
    .locals 7

    .line 118
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 119
    new-instance v1, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)V

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected stopCollectTimer()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

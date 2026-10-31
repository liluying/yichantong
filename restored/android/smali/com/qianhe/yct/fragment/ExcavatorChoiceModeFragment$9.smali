.class Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;
.super Ljava/lang/Object;
.source "ExcavatorChoiceModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showInstallTipsDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

.field final synthetic val$isNoMoreReminders:[Z

.field final synthetic val$ivNoMore:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;[ZLandroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;->val$isNoMoreReminders:[Z

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;->val$ivNoMore:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 315
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;->val$isNoMoreReminders:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, p1, v0

    .line 316
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;->val$ivNoMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

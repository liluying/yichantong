.class public final synthetic Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

.field public final synthetic f$1:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$1:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    iput p3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$2:I

    iput-object p4, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$0:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$1:Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;

    iget v2, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$2:I

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$$ExternalSyntheticLambda21;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;->$r8$lambda$YIervvdBMmi7LLshK_dH8hx5Zj4(Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment;Lcom/qianhe/yct/fragment/ExcavatorMode4Step2Fragment$FocusedType;ILjava/lang/Runnable;Landroid/view/View;Z)V

    return-void
.end method

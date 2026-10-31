.class Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;
.super Ljava/lang/Object;
.source "CollectingDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/CollectingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fgetdownX(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fgetdownY(Lcom/qianhe/yct/dialog/CollectingDialogFragment;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 100
    iget-object v1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 102
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 103
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p1, v0

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fputdownX(Lcom/qianhe/yct/dialog/CollectingDialogFragment;F)V

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fputdownY(Lcom/qianhe/yct/dialog/CollectingDialogFragment;F)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fputdownX(Lcom/qianhe/yct/dialog/CollectingDialogFragment;F)V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CollectingDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->-$$Nest$fputdownY(Lcom/qianhe/yct/dialog/CollectingDialogFragment;F)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

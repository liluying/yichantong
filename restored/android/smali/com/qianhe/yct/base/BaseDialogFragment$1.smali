.class Lcom/qianhe/yct/base/BaseDialogFragment$1;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

.field final synthetic val$old:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseDialogFragment;Landroid/view/Window$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-static {v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fputsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;Z)V

    goto/16 :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fgetsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fgetsoftInputTouchDownX(Lcom/qianhe/yct/base/BaseDialogFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v0, v0

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fgetsoftInputTouchDownY(Lcom/qianhe/yct/base/BaseDialogFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-static {v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fputsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;Z)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fgetsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$mshowSoftInputIfClickEditText(Lcom/qianhe/yct/base/BaseDialogFragment;FF)V

    goto :goto_0

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fputsoftInputTouchDownX(Lcom/qianhe/yct/base/BaseDialogFragment;F)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fputsoftInputTouchDownY(Lcom/qianhe/yct/base/BaseDialogFragment;F)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$fputsoftInputTouchMoved(Lcom/qianhe/yct/base/BaseDialogFragment;Z)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->this$0:Lcom/qianhe/yct/base/BaseDialogFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/base/BaseDialogFragment;->-$$Nest$mhideSoftInputIfTouchOutside(Lcom/qianhe/yct/base/BaseDialogFragment;FF)V

    .line 212
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment$1$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment$1;->val$old:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment$1$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

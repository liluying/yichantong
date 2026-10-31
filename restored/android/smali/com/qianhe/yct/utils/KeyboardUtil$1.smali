.class Lcom/qianhe/yct/utils/KeyboardUtil$1;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/KeyboardUtil;->initRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastRootViewHeight:I

.field final synthetic this$0:Lcom/qianhe/yct/utils/KeyboardUtil;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/KeyboardUtil;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v1}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetrootView(Lcom/qianhe/yct/utils/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 42
    iget-object v1, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v1}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetrootView(Lcom/qianhe/yct/utils/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 43
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 47
    iget v2, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->lastRootViewHeight:I

    if-lez v2, :cond_1

    .line 48
    iget-object v3, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v3}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetkeyboardHeightThreshold(Lcom/qianhe/yct/utils/KeyboardUtil;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v1}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetlistener(Lcom/qianhe/yct/utils/KeyboardUtil;)Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v1}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetlistener(Lcom/qianhe/yct/utils/KeyboardUtil;)Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;->onKeyboardHidden()V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v2}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetlistener(Lcom/qianhe/yct/utils/KeyboardUtil;)Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 54
    iget-object v1, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->this$0:Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-static {v1}, Lcom/qianhe/yct/utils/KeyboardUtil;->-$$Nest$fgetlistener(Lcom/qianhe/yct/utils/KeyboardUtil;)Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;->onKeyboardShown()V

    .line 58
    :cond_1
    :goto_0
    iput v0, p0, Lcom/qianhe/yct/utils/KeyboardUtil$1;->lastRootViewHeight:I

    return-void
.end method

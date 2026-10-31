.class Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$4;
.super Ljava/lang/Object;
.source "PolyLineStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardHidden()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onKeyboardShown()V
    .locals 0

    .line 0
    return-void
.end method

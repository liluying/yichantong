.class Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;
.super Ljava/lang/Object;
.source "ExcavatorStep4Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

.field final synthetic val$type:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 224
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 225
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Z)V

    .line 226
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$mupdateStepGif(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    :cond_0
    return-void
.end method

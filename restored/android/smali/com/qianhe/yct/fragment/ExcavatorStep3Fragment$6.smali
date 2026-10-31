.class Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;
.super Ljava/lang/Object;
.source "ExcavatorStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

.field final synthetic val$type:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;)V

    .line 187
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Z)V

    return-void
.end method

.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

.field final synthetic val$type:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 547
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fputlastFocusedTyep(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;)V

    .line 548
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Z)V

    return-void
.end method

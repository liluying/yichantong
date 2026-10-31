.class Lcom/qh/xcad/XCadView$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qh/xcad/XCadView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qh/xcad/XCadView$1;


# direct methods
.method constructor <init>(Lcom/qh/xcad/XCadView$1;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/qh/xcad/XCadView$1$1;->this$1:Lcom/qh/xcad/XCadView$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 467
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1$1;->this$1:Lcom/qh/xcad/XCadView$1;

    iget-object p1, p1, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qh/xcad/XCadView;->-$$Nest$fputloadingVisible(Lcom/qh/xcad/XCadView;Z)V

    .line 468
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1$1;->this$1:Lcom/qh/xcad/XCadView$1;

    iget-object p1, p1, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.class Lcom/qh/xcad/XCadView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qh/xcad/XCadView;->finishLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qh/xcad/XCadView;


# direct methods
.method public static synthetic $r8$lambda$SUndb1cYGEvTpgrxauhDRwms9KA(Lcom/qh/xcad/XCadView$1;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    .line 461
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/qh/xcad/XCadView;->-$$Nest$fputloadingAlpha(Lcom/qh/xcad/XCadView;F)V

    .line 462
    iget-object p0, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method constructor <init>(Lcom/qh/xcad/XCadView;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 458
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qh/xcad/XCadView;->-$$Nest$fputalphaAnimator(Lcom/qh/xcad/XCadView;Landroid/animation/ValueAnimator;)V

    .line 459
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {p1}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetalphaAnimator(Lcom/qh/xcad/XCadView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {p1}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetalphaAnimator(Lcom/qh/xcad/XCadView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/qh/xcad/XCadView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qh/xcad/XCadView$1$$ExternalSyntheticLambda0;-><init>(Lcom/qh/xcad/XCadView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 464
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {p1}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetalphaAnimator(Lcom/qh/xcad/XCadView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/qh/xcad/XCadView$1$1;

    invoke-direct {v0, p0}, Lcom/qh/xcad/XCadView$1$1;-><init>(Lcom/qh/xcad/XCadView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 471
    iget-object p1, p0, Lcom/qh/xcad/XCadView$1;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {p1}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetalphaAnimator(Lcom/qh/xcad/XCadView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

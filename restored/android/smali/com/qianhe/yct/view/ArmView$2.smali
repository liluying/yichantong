.class Lcom/qianhe/yct/view/ArmView$2;
.super Ljava/lang/Object;
.source "ArmView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/ArmView;->setupAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/ArmView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/ArmView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/view/ArmView$2;->this$0:Lcom/qianhe/yct/view/ArmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView$2;->this$0:Lcom/qianhe/yct/view/ArmView;

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/view/ArmView;->-$$Nest$fputcurrentDistance(Lcom/qianhe/yct/view/ArmView;D)V

    return-void
.end method

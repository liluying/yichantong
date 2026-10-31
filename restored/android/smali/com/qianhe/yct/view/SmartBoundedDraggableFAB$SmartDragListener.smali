.class Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;
.super Ljava/lang/Object;
.source "SmartBoundedDraggableFAB.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartDragListener"
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:F

.field private initialY:F

.field private isDragging:Z

.field private longClickRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

.field private touchDownTime:J


# direct methods
.method public static synthetic $r8$lambda$EDAZndJD3ZxRDeENvUM-zKWLA5s(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    .line 88
    invoke-static {v0}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->isDragging:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fputisLongClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V

    .line 90
    iget-object p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p0}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetlongClickListener(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    const/4 p0, 0x0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Lcom/qianhe/yct/view/SmartBoundedDraggableFAB-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;-><init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v2

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p1, v2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fputisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p1, v2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fputisLongClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V

    .line 160
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetclickHandler(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return v2

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialTouchX:F

    sub-float/2addr v0, v3

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialTouchY:F

    sub-float/2addr p2, v3

    .line 105
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 106
    :cond_3
    iput-boolean v1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->isDragging:Z

    .line 107
    iget-object v3, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {v3, v2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fputisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V

    .line 110
    iget-object v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {v2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetclickHandler(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    :cond_4
    iget-boolean v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->isDragging:Z

    if-eqz v2, :cond_6

    .line 116
    iget-object v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    iget v3, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialX:F

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$mclampX(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;F)F

    move-result v0

    .line 117
    iget-object v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    iget v3, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialY:F

    add-float/2addr v3, p2

    invoke-static {v2, v3}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$mclampY(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;F)F

    move-result p2

    .line 119
    iget-object v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {v2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetenableBoundsAnimation(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    :goto_0
    return v1

    .line 129
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_8

    .line 133
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetclickHandler(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    :cond_8
    iget-boolean p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->isDragging:Z

    if-eqz p2, :cond_9

    .line 137
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$msavePosition(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;FF)V

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetenableEdgeSnap(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z

    return v1

    .line 143
    :cond_9
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetisLongClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 145
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetclickListener(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 146
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetclickListener(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 149
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    return v1

    .line 153
    :cond_b
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p1, v2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fputisLongClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V

    return v2

    .line 77
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialX:F

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialY:F

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialTouchX:F

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->initialTouchY:F

    .line 81
    iput-boolean v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->isDragging:Z

    .line 82
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2, v1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fputisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->touchDownTime:J

    .line 86
    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetlongClickListener(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/view/View$OnLongClickListener;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 87
    new-instance p2, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;Landroid/view/View;)V

    iput-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->this$0:Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;

    invoke-static {p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->-$$Nest$fgetclickHandler(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;->longClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return v1
.end method

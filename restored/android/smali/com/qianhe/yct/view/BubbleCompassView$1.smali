.class Lcom/qianhe/yct/view/BubbleCompassView$1;
.super Ljava/lang/Object;
.source "BubbleCompassView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/BubbleCompassView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/BubbleCompassView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/BubbleCompassView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgetbubbleAnimating(Lcom/qianhe/yct/view/BubbleCompassView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgetlastFrameTimeNs(Lcom/qianhe/yct/view/BubbleCompassView;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const v0, 0x3c83126f    # 0.016f

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgetlastFrameTimeNs(Lcom/qianhe/yct/view/BubbleCompassView;)J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-float v0, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v4

    .line 74
    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v4, v2, v3}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fputlastFrameTimeNs(Lcom/qianhe/yct/view/BubbleCompassView;J)V

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    const v0, 0x3d4ccccd    # 0.05f

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v4, v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$mstepBubbleSmooth(Lcom/qianhe/yct/view/BubbleCompassView;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgettargetRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F

    move-result v0

    iget-object v4, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v4}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgetdisplayRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgettargetPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F

    move-result v0

    iget-object v5, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v5}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgetdisplayPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F

    move-result v5

    sub-float/2addr v0, v5

    .line 85
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgetlastTargetUpdateNs(Lcom/qianhe/yct/view/BubbleCompassView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x11e1a300

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgettargetRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fputdisplayRollDegrees(Lcom/qianhe/yct/view/BubbleCompassView;F)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fgettargetPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fputdisplayPitchDegrees(Lcom/qianhe/yct/view/BubbleCompassView;F)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0, v1}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fputbubbleAnimating(Lcom/qianhe/yct/view/BubbleCompassView;Z)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0, v6, v7}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fputlastFrameTimeNs(Lcom/qianhe/yct/view/BubbleCompassView;J)V

    return-void

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 69
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/view/BubbleCompassView$1;->this$0:Lcom/qianhe/yct/view/BubbleCompassView;

    invoke-static {v0, v1}, Lcom/qianhe/yct/view/BubbleCompassView;->-$$Nest$fputbubbleAnimating(Lcom/qianhe/yct/view/BubbleCompassView;Z)V

    return-void
.end method

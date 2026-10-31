.class Lcom/qianhe/yct/view/LinePreView$1;
.super Ljava/lang/Object;
.source "LinePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/LinePreView;->getParentContainerDimensions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/LinePreView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/LinePreView;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 236
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 237
    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fputcenterX(Lcom/qianhe/yct/view/LinePreView;F)V

    .line 239
    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-static {v1, v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fputcenterY(Lcom/qianhe/yct/view/LinePreView;F)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcenterX(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fputoffsetX(Lcom/qianhe/yct/view/LinePreView;F)V

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcenterY(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fputoffsetY(Lcom/qianhe/yct/view/LinePreView;F)V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v1}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetoffsetX(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcurrentPoint(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v3}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetoffsetY(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint1(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint2(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint1(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v1}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint1(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetoffsetX(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint1(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v3}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetoffsetY(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 249
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint2(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v1}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint2(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetoffsetX(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetpoint2(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v3}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetoffsetY(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetmatrix(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 252
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetmatrix(Lcom/qianhe/yct/view/LinePreView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v1}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcenterX(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-static {v2}, Lcom/qianhe/yct/view/LinePreView;->-$$Nest$fgetcenterY(Lcom/qianhe/yct/view/LinePreView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/view/LinePreView$1;->this$0:Lcom/qianhe/yct/view/LinePreView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

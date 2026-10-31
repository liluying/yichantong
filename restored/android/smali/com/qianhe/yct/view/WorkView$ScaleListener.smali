.class Lcom/qianhe/yct/view/WorkView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "WorkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/WorkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/WorkView;


# direct methods
.method private constructor <init>(Lcom/qianhe/yct/view/WorkView;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/qianhe/yct/view/WorkView$ScaleListener;->this$0:Lcom/qianhe/yct/view/WorkView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/view/WorkView;Lcom/qianhe/yct/view/WorkView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/WorkView$ScaleListener;-><init>(Lcom/qianhe/yct/view/WorkView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 798
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 799
    iget-object v1, p0, Lcom/qianhe/yct/view/WorkView$ScaleListener;->this$0:Lcom/qianhe/yct/view/WorkView;

    invoke-static {v1}, Lcom/qianhe/yct/view/WorkView;->-$$Nest$fgetmatrix(Lcom/qianhe/yct/view/WorkView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 p1, 0x1

    return p1
.end method

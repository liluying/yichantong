.class Lcom/qianhe/yct/view/ArmView$1;
.super Ljava/lang/Object;
.source "ArmView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/ArmView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 80
    iput-object p1, p0, Lcom/qianhe/yct/view/ArmView$1;->this$0:Lcom/qianhe/yct/view/ArmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView$1;->this$0:Lcom/qianhe/yct/view/ArmView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView$1;->this$0:Lcom/qianhe/yct/view/ArmView;

    invoke-static {v0}, Lcom/qianhe/yct/view/ArmView;->-$$Nest$msetupPivotPoint(Lcom/qianhe/yct/view/ArmView;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/view/ArmView$1;->this$0:Lcom/qianhe/yct/view/ArmView;

    invoke-static {v0}, Lcom/qianhe/yct/view/ArmView;->-$$Nest$fgetcurrentAngle(Lcom/qianhe/yct/view/ArmView;)D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/view/ArmView;->-$$Nest$mapplyRotation(Lcom/qianhe/yct/view/ArmView;DZ)V

    return-void
.end method

.class Lcom/qianhe/yct/view/PolyLinePreView$2;
.super Ljava/lang/Object;
.source "PolyLinePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/PolyLinePreView;->setProjectPoint(Ljava/util/List;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/PolyLinePreView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/PolyLinePreView;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/qianhe/yct/view/PolyLinePreView$2;->this$0:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView$2;->this$0:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->locateToStartPoint()V

    return-void
.end method

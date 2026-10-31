.class Lcom/qh/xcad/XCadView$2;
.super Ljava/lang/Object;
.source "XCadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qh/xcad/XCadView;


# direct methods
.method constructor <init>(Lcom/qh/xcad/XCadView;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/qh/xcad/XCadView$2;->this$0:Lcom/qh/xcad/XCadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/qh/xcad/XCadView$2;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {v0}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetstartFocalX(Lcom/qh/xcad/XCadView;)F

    move-result v1

    iget-object v2, p0, Lcom/qh/xcad/XCadView$2;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {v2}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetstartFocalY(Lcom/qh/xcad/XCadView;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qh/xcad/XCadView;->-$$Nest$mhandleMarkerTap(Lcom/qh/xcad/XCadView;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/qh/xcad/XCadView$2;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {v0}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetstartFocalX(Lcom/qh/xcad/XCadView;)F

    move-result v1

    iget-object v2, p0, Lcom/qh/xcad/XCadView$2;->this$0:Lcom/qh/xcad/XCadView;

    invoke-static {v2}, Lcom/qh/xcad/XCadView;->-$$Nest$fgetstartFocalY(Lcom/qh/xcad/XCadView;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/qh/xcad/XCadView;->-$$Nest$mhandleTap(Lcom/qh/xcad/XCadView;FF)V

    return-void
.end method

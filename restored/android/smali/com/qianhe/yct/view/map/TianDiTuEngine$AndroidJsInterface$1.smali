.class Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;
.super Ljava/lang/Object;
.source "TianDiTuEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;->onInitResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;->this$1:Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

    iput-boolean p2, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;->this$1:Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

    iget-object v0, v0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;->this$0:Lcom/qianhe/yct/view/map/TianDiTuEngine;

    invoke-static {v0}, Lcom/qianhe/yct/view/map/TianDiTuEngine;->-$$Nest$fgetisDestroy(Lcom/qianhe/yct/view/map/TianDiTuEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;->this$1:Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;

    iget-object v0, v0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;->this$0:Lcom/qianhe/yct/view/map/TianDiTuEngine;

    iget-object v0, v0, Lcom/qianhe/yct/view/map/IMapEngineImpl;->onLoadMapListener:Lcom/qianhe/yct/view/map/OnLoadMapListener;

    if-eqz v0, :cond_1

    .line 305
    iget-boolean v1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;->val$result:Z

    invoke-interface {v0, v1}, Lcom/qianhe/yct/view/map/OnLoadMapListener;->onLoadMapResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method

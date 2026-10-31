.class Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;
.super Ljava/lang/Object;
.source "TianDiTuEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/map/TianDiTuEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidJsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/map/TianDiTuEngine;


# direct methods
.method private constructor <init>(Lcom/qianhe/yct/view/map/TianDiTuEngine;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;->this$0:Lcom/qianhe/yct/view/map/TianDiTuEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/view/map/TianDiTuEngine;Lcom/qianhe/yct/view/map/TianDiTuEngine-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;-><init>(Lcom/qianhe/yct/view/map/TianDiTuEngine;)V

    return-void
.end method


# virtual methods
.method public onInitResult(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;->this$0:Lcom/qianhe/yct/view/map/TianDiTuEngine;

    invoke-static {v0}, Lcom/qianhe/yct/view/map/TianDiTuEngine;->-$$Nest$fgetyMapHandler(Lcom/qianhe/yct/view/map/TianDiTuEngine;)Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface$1;-><init>(Lcom/qianhe/yct/view/map/TianDiTuEngine$AndroidJsInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

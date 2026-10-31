.class Lcom/qianhe/yct/fragment/PointCreateFragment$2;
.super Ljava/lang/Object;
.source "PointCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PointCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mrestoreInitGeodeticCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$misEcefMode(Lcom/qianhe/yct/fragment/PointCreateFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mrefreshEcefDisplay(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;DDD)V

    return-void
.end method

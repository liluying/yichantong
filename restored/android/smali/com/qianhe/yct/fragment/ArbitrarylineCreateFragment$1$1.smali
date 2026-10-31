.class Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;
.super Ljava/lang/Object;
.source "ArbitrarylineCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

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

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->east:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->north:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->elev:D

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;DDD)V

    return-void
.end method

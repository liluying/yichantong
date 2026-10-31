.class Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;
.super Ljava/lang/Object;
.source "ShuaPoStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

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

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;DDD)V

    return-void
.end method

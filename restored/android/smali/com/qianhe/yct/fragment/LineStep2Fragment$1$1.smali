.class Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;
.super Ljava/lang/Object;
.source "LineStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep2Fragment$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

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

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v1, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/LineEntity;->north2:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1$1;->this$1:Lcom/qianhe/yct/fragment/LineStep2Fragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/LineStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/LineStep2Fragment;DDD)V

    return-void
.end method

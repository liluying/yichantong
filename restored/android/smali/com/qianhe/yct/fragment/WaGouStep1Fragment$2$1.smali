.class Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;
.super Ljava/lang/Object;
.source "WaGouStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

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

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2$1;->this$1:Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/WaGouStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/WaGouStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/WaGouStep1Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/WaGouStep1Fragment;DDD)V

    return-void
.end method

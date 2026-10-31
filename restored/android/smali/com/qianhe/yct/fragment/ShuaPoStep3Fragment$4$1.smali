.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;
.super Ljava/lang/Object;
.source "ShuaPoStep3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

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

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east3:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north3:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation3:D

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;DDD)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mupdateSlopeParamsFromABC(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    return-void
.end method

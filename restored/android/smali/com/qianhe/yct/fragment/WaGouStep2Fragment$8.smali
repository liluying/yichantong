.class Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;
.super Ljava/lang/Object;
.source "WaGouStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fputactionType(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;I)V

    .line 232
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_0
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    :cond_1
    return-void
.end method

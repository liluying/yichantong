.class Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;
.super Ljava/lang/Object;
.source "ArbitrarylineCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object p1

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    neg-double v1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object p1

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->depth:D

    :cond_1
    return-void
.end method

.class public final synthetic Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/GnssTransParamEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->$r8$lambda$6ZX1EyHNbQ2nxsMyLZRnOiePA_k(Lcom/qianhe/yct/adapter/ConverParamsListAdapter;Lcom/qianhe/baselib/bean/GnssTransParamEntity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

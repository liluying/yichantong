.class public final synthetic Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/BucketListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/ShovelEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter;->$r8$lambda$rl0oRRH5-7JJHjk6PvIisxLmhns(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

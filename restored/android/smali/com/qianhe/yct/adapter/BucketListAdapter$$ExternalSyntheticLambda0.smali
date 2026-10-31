.class public final synthetic Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/BucketListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/ShovelEntity;

.field public final synthetic f$2:Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/adapter/BucketListAdapter;->$r8$lambda$pqPOcCmazo4DMVjk1lUfQ0vjSBc(Lcom/qianhe/yct/adapter/BucketListAdapter;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;Landroid/view/View;)V

    return-void
.end method

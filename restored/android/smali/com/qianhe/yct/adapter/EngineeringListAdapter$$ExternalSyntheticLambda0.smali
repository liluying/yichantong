.class public final synthetic Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field public final synthetic f$2:Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->$r8$lambda$4rfvjtvrJA8qy-n1Pt0Xe9ghyeQ(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;Landroid/view/View;)V

    return-void
.end method

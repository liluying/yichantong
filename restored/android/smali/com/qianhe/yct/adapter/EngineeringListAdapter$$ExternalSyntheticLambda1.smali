.class public final synthetic Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/EngineeringEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/EngineeringEntity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->$r8$lambda$ElYjL9vNhlNzDvgwZ1RootV5URM(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

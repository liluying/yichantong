.class Lcom/qianhe/yct/adapter/PointListAdapter$3;
.super Ljava/lang/Object;
.source "PointListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/PointListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

.field final synthetic val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$3;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/PointListAdapter$3;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$3;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/PointListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$3;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$3;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$mshowPopupMenu(Lcom/qianhe/yct/adapter/PointListAdapter;Landroid/view/View;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

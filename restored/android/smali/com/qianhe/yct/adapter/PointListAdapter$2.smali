.class Lcom/qianhe/yct/adapter/PointListAdapter$2;
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

    .line 92
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/PointListAdapter;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi(Z)V

    :cond_1
    return v0
.end method

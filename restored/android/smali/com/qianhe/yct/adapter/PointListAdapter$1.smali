.class Lcom/qianhe/yct/adapter/PointListAdapter$1;
.super Ljava/lang/Object;
.source "PointListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;

.field final synthetic val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/PointListAdapter;Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/PointListAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PointListAdapter;)Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PointListAdapter;)Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onClick(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/qianhe/yct/adapter/PointListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/PointListAdapter;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->val$pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PointListAdapter;)Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PointListAdapter;)Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/PointListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/PointListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_4
    return-void
.end method

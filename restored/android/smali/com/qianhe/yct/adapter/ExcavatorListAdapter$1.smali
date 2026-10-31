.class Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;
.super Ljava/lang/Object;
.source "ExcavatorListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

.field final synthetic val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onClick(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_4
    return-void
.end method

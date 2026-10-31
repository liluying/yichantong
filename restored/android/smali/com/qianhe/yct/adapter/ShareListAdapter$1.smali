.class Lcom/qianhe/yct/adapter/ShareListAdapter$1;
.super Ljava/lang/Object;
.source "ShareListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ShareListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;

.field final synthetic val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ShareListAdapter;Lcom/qianhe/baselib/bean/ShareEntity;Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ShareListAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareListAdapter;)Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareListAdapter;)Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;->onClick(Lcom/qianhe/baselib/bean/ShareEntity;)V

    return-void

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/ShareListAdapter;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareListAdapter;)Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareListAdapter;)Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

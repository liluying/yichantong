.class Lcom/qianhe/yct/adapter/ProjectListAdapter$1;
.super Ljava/lang/Object;
.source "ProjectListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ProjectListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

.field final synthetic val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ProjectListAdapter;Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;->onContinueWork(Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

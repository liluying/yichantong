.class Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;
.super Ljava/lang/Object;
.source "ChoiceMultipleProjectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

.field final synthetic val$entity:Lcom/qianhe/baselib/base/BaseProEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;->onAction(Ljava/util/ArrayList;)V

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

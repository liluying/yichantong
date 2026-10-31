.class Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;
.super Ljava/lang/Object;
.source "ChoiceProjectNameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

.field final synthetic val$entity:Lcom/qianhe/baselib/base/BaseProEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetselectedName(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetselectedName(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetselectedName(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetselectedName(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->val$entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;->onAction(Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

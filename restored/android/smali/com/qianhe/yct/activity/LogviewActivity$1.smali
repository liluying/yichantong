.class Lcom/qianhe/yct/activity/LogviewActivity$1;
.super Ljava/lang/Object;
.source "LogviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/LogviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/LogviewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/LogviewActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    const-string/jumbo v0, "\u6eda\u5230\u9876\u90e8"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    const-string/jumbo v0, "\u6eda\u5230\u5e95\u90e8"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$1;->this$0:Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/LogviewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

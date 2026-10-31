.class Lcom/qianhe/yct/activity/ExcavatorListActivity$2;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->ivAll:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->selecteAll(Z)V

    return-void
.end method

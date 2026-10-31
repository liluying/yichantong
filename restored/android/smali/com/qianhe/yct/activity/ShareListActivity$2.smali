.class Lcom/qianhe/yct/activity/ShareListActivity$2;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ShareListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ShareListActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$2;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$2;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivAll:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$2;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 163
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$2;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetshareListAdapter(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/adapter/ShareListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$2;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->selecteAll(Z)V

    return-void
.end method

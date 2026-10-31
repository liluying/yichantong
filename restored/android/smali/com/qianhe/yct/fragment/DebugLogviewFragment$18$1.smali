.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->onChanged(Lcom/qianhe/rtkclientlib/event/DebugData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;->this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;->this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetisFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;->this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->isPressing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;->this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;->this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;->this$1:Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

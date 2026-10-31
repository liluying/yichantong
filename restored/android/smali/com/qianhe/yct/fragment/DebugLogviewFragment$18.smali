.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/rtkclientlib/event/DebugData;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/DebugData;->line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/DebugData;->line:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mshouldDisplayMessage(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/DebugData;->line:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->addData(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 392
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18$1;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 385
    check-cast p1, Lcom/qianhe/rtkclientlib/event/DebugData;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$18;->onChanged(Lcom/qianhe/rtkclientlib/event/DebugData;)V

    return-void
.end method

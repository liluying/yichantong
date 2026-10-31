.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;
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

    .line 352
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/BestPosEntity;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSolutionNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v2, Lcom/qianhe/yct/R$string;->solution_star_number:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->useStar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "%s\uff1a%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvBestLon:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lon:D

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvBestLat:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lat:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvBestElev:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->elve:D

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvBestElevDiff:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->elveDiff:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 352
    check-cast p1, Lcom/qianhe/baselib/bean/BestPosEntity;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$15;->onChanged(Lcom/qianhe/baselib/bean/BestPosEntity;)V

    return-void
.end method

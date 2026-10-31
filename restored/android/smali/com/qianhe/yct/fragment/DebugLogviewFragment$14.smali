.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;
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

    .line 340
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 5

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 345
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvDiffage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v2, Lcom/qianhe/yct/R$string;->no_difference:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvDiffage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v3, Lcom/qianhe/yct/R$string;->diff_delay:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const-string v2, "%s\uff1a%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mrefreshData(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Lcom/qianhe/baselib/bean/GGAEntity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p1, Lcom/qianhe/baselib/bean/GGAEntity;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$14;->onChanged(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void
.end method

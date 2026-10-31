.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;
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

    .line 376
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/GPDOPEntity;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvHDOP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget v2, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->hdop:F

    float-to-double v2, v2

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvVDOP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget p1, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->vdop:F

    float-to-double v2, p1

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p1, Lcom/qianhe/baselib/bean/GPDOPEntity;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$17;->onChanged(Lcom/qianhe/baselib/bean/GPDOPEntity;)V

    return-void
.end method

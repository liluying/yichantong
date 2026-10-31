.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSaveSnr:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-string v0, "$GPSNR,"

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetfilterList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetfilterList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$8;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetfilterList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/DebugLogCache;->setFilter(Ljava/util/List;)V

    return-void
.end method

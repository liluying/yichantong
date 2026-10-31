.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;
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

    .line 256
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 259
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetfilterList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v0, Lcom/qianhe/yct/R$string;->select_message_type:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->access$000(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->stop_save:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetfilterList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/DebugLogCache;->init(Landroid/content/Context;Ljava/util/List;)V

    .line 269
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->start()V

    .line 270
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v0, Lcom/qianhe/yct/R$string;->start_save:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->access$100(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 273
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvSave:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->start_save:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 274
    invoke-static {}, Lcom/qianhe/baselib/utils/DebugLogCache;->stop()V

    .line 275
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$10;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v0, Lcom/qianhe/yct/R$string;->stopped:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->access$200(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Ljava/lang/String;)V

    return-void
.end method

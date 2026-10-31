.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;
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

    .line 133
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetisFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputisFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Z)V

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->btnFixed:Landroid/widget/Button;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetisFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v1, Lcom/qianhe/yct/R$string;->scroll:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$1;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v1, Lcom/qianhe/yct/R$string;->fixed:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

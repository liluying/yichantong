.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v0, Lcom/qianhe/yct/R$string;->sure_the_configuration:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;)V

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->access$100(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

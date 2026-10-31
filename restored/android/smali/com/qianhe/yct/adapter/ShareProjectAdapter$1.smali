.class Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;
.super Ljava/lang/Object;
.source "ShareProjectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ShareProjectAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

.field final synthetic val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ShareProjectAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 110
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetmActivity(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TipsDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetmActivity(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->want_to_remove:I

    iget-object v3, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetmActivity(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnStr"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    new-instance v0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;-><init>(Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

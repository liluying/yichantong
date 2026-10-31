.class Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;
.super Ljava/lang/Object;
.source "MultipleCoordsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetactivity(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetactivity(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->want_to_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetactivity(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;-><init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

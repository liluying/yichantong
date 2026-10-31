.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showInstallTipsDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

.field final synthetic val$ivNoMore:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;->val$ivNoMore:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetisNoMoreReminders(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fputisNoMoreReminders(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    .line 148
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;->val$ivNoMore:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetisNoMoreReminders(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

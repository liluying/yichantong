.class Lcom/qianhe/yct/fragment/HomeFragment$1$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/HomeFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/HomeFragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/HomeFragment$1;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/HomeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/HomeFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/HomeFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$mgotoBaseStationConfigActivity(Lcom/qianhe/yct/fragment/HomeFragment;)V

    return-void
.end method

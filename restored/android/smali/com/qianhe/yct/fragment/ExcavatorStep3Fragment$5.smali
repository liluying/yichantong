.class Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$5;
.super Ljava/lang/Object;
.source "ExcavatorStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->initGifShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Z)V

    :cond_0
    return-void
.end method

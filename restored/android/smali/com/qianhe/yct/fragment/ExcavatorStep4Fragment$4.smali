.class Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$4;
.super Ljava/lang/Object;
.source "ExcavatorStep4Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->initGifShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Z)V

    :cond_0
    return-void
.end method

.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$9;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->initGifShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 292
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    :cond_0
    return-void
.end method

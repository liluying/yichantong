.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$8;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 282
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

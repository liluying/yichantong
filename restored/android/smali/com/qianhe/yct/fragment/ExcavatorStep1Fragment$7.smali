.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;
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

    .line 274
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ex30_close_up:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_h5pro_close_up:I

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

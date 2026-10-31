.class Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$5;
.super Ljava/lang/Object;
.source "ThreePointAreaStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;->goPointLibrary()V

    return-void
.end method

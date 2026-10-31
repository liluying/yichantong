.class Lcom/qianhe/yct/fragment/DikeStep2Fragment$6;
.super Ljava/lang/Object;
.source "DikeStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$6;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;->goPointLibrary()V

    return-void
.end method

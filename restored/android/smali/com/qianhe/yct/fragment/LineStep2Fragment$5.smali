.class Lcom/qianhe/yct/fragment/LineStep2Fragment$5;
.super Ljava/lang/Object;
.source "LineStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/line/LineCreateActivity;->goPointLibrary()V

    return-void
.end method

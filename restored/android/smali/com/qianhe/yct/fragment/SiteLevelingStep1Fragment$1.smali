.class Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$1;
.super Ljava/lang/Object;
.source "SiteLevelingStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;->goPointLibrary()V

    return-void
.end method

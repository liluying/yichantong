.class Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;
.super Ljava/lang/Object;
.source "SiteLevelingWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Z)V

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    return-void
.end method

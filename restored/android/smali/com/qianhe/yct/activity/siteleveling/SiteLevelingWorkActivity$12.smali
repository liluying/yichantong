.class Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$12;
.super Ljava/lang/Object;
.source "SiteLevelingWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->showFixedCoordinateStartupDialog()V
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

    .line 527
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 530
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Z)V

    return-void
.end method

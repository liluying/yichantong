.class Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;
.super Ljava/lang/Object;
.source "SiteLevelingWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 252
    iput-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    .line 258
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$minitPlayer(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)V

    .line 263
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity$5;->this$0:Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;)Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivitySitelevelingWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

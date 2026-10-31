.class Lcom/qianhe/yct/activity/CorsRenewActivity$4;
.super Ljava/lang/Object;
.source "CorsRenewActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CorsRenewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$4;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 142
    const-string/jumbo v0, "wechat_not_installed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$4;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

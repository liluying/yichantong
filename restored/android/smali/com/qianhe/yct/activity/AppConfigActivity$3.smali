.class Lcom/qianhe/yct/activity/AppConfigActivity$3;
.super Ljava/lang/Object;
.source "AppConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/AppConfigActivity;->initTopBar()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/AppConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/AppConfigActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/AppConfigActivity;->-$$Nest$fgetcount(Lcom/qianhe/yct/activity/AppConfigActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/AppConfigActivity;->-$$Nest$fputcount(Lcom/qianhe/yct/activity/AppConfigActivity;I)V

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/AppConfigActivity;->-$$Nest$fgetcount(Lcom/qianhe/yct/activity/AppConfigActivity;)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/AppConfigActivity;->-$$Nest$fputcount(Lcom/qianhe/yct/activity/AppConfigActivity;I)V

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$3;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/AppConfigActivity;->-$$Nest$fgetisAdmin(Lcom/qianhe/yct/activity/AppConfigActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

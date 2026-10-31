.class Lcom/qianhe/yct/activity/AppConfigActivity$2;
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

    .line 90
    iput-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/activity/AppConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/AppConfigActivity;

    iget-boolean v0, p1, Lcom/qianhe/yct/activity/AppConfigActivity;->keyboardShown:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p1, Lcom/qianhe/yct/activity/AppConfigActivity;->keyboardShown:Z

    return-void
.end method

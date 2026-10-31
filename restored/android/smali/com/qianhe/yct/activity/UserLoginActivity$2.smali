.class Lcom/qianhe/yct/activity/UserLoginActivity$2;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserLoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$2;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$2;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetloginType(Lcom/qianhe/yct/activity/UserLoginActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$2;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$mswitchToCaptchaLogin(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    return-void

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$2;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$mswitchToPasswordLogin(Lcom/qianhe/yct/activity/UserLoginActivity;Z)V

    return-void
.end method

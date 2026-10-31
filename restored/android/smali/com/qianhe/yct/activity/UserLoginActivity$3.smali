.class Lcom/qianhe/yct/activity/UserLoginActivity$3;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 183
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$3;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$3;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$mupdateLoginUi(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

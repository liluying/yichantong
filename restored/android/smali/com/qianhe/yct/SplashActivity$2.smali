.class Lcom/qianhe/yct/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/SplashActivity;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$ivSel:Landroid/widget/ImageView;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/SplashActivity;Landroid/widget/ImageView;Landroidx/appcompat/app/AlertDialog;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    iput-object p2, p0, Lcom/qianhe/yct/SplashActivity$2;->val$ivSel:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/qianhe/yct/SplashActivity$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p4, p0, Lcom/qianhe/yct/SplashActivity$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->val$ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "agree_privacy_agreement"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    const-class v2, Lcom/qianhe/yct/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 112
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$2;->this$0:Lcom/qianhe/yct/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

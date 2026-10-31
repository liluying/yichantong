.class Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;
.super Ljava/lang/Object;
.source "ExcavatorChoiceModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showInstallTipsDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$isNoMoreReminders:[Z

.field final synthetic val$onConfirm:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;[ZLandroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->val$isNoMoreReminders:[Z

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->val$dialog:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->val$onConfirm:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 323
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->val$isNoMoreReminders:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->access$100(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v1, "show_install_sensor_tips"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 327
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;->val$onConfirm:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

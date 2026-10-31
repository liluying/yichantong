.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showInstallTipsDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$showNoMore:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ZLandroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->val$showNoMore:Z

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->val$showNoMore:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetisNoMoreReminders(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$000(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "show_install_leveling_tips"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

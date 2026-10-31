.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$3;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$100(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "show_install_leveling_tips"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$mshowInstallTipsDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    return-void
.end method

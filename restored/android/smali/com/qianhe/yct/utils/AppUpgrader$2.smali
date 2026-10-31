.class Lcom/qianhe/yct/utils/AppUpgrader$2;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "AppUpgrader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/AppUpgrader;->showUpgradeTipsDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/AppUpgrader;

.field final synthetic val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$2;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$2;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$2;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$fgetupgradeTipsDialogFragment(Lcom/qianhe/yct/utils/AppUpgrader;)Lcom/qianhe/yct/dialog/UpgradeApkDialogFragment;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 160
    iget-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$2;->this$0:Lcom/qianhe/yct/utils/AppUpgrader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$2;->val$onUpgradeListioner:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    invoke-static {p2, v0}, Lcom/qianhe/yct/utils/AppUpgrader;->-$$Nest$mnotifyUpgradeTipsDialogShown(Lcom/qianhe/yct/utils/AppUpgrader;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    .line 161
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

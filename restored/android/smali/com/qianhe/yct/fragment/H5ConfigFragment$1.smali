.class Lcom/qianhe/yct/fragment/H5ConfigFragment$1;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 98
    new-instance p1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v2, Lcom/qianhe/yct/R$string;->unit_preference:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$1;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$mgetUnitLabelList(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Ljava/util/ArrayList;

    move-result-object v1

    .line 103
    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v1

    .line 104
    invoke-static {v1}, Lcom/qianhe/baselib/enums/UnitEnum;->typeToSelectableIndex(I)I

    move-result v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v1, "requestKey"

    const-string/jumbo v2, "unitpref"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

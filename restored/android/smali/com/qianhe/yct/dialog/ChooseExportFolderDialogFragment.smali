.class public Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseExportFolderDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

.field private currentDir:Ljava/io/File;

.field private final folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private onConfirmListener:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;

.field private rootDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$Lw47vVJUprlf4MGHK5fBzYrMQV0(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->showNewFolderPanel()V

    return-void
.end method

.method public static synthetic $r8$lambda$R0noWtD_DCn24vygFnJmWuYN-c8(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->goParent()V

    return-void
.end method

.method public static synthetic $r8$lambda$SYHnoLN0__T6gJIdHbu6UL_ydLA(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    .line 90
    iget-object p0, p0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->edtFolderName:Landroidx/appcompat/widget/AppCompatEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLIHdWOO_mjkAPa31ruTlYvRgVc(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;->onConfirm(Ljava/io/File;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$nW-aqCEywgBJP2nXv51DwliChnU(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->createFolder()V

    return-void
.end method

.method public static synthetic $r8$lambda$pnQIhrrbTRRYOdF6xvORMBA5WAk(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->hideNewFolderPanel()V

    return-void
.end method

.method public static synthetic $r8$lambda$q2t7kBUQ6Le_npZS2B_8n0gnZBc(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfolderList(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->folderList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$menterFolder(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->enterFolder(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->folderList:Ljava/util/List;

    return-void
.end method

.method private createFolder()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->edtFolderName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->edtFolderName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    sget v0, Lcom/qianhe/yct/R$string;->folder_name_empty:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ":"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "\""

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 180
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isAtRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isHiddenAppFolderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 184
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget v0, Lcom/qianhe/yct/R$string;->folder_already_exists:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    .line 190
    sget v0, Lcom/qianhe/yct/R$string;->create_folder_failed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->hideNewFolderPanel()V

    .line 194
    invoke-direct {p0, v1}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->enterFolder(Ljava/io/File;)V

    return-void

    .line 181
    :cond_5
    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->folder_name_invalid:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private enterFolder(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    .line 99
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->reloadFolders()V

    :cond_1
    :goto_0
    return-void
.end method

.method private goParent()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isAtRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    .line 107
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->reloadFolders()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideNewFolderPanel()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->select_export_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->lltNewFolder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->lltPicker:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->edtFolderName:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isAtRoot()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->rootDir:Ljava/io/File;

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isHiddenAppFolder(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isAtRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isHiddenAppFolderName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static isHiddenAppFolderName(Ljava/lang/String;)Z
    .locals 1

    .line 121
    const-string v0, "YCT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XFIX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private reloadFolders()V
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->rootDir:Ljava/io/File;

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvUp:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isAtRoot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvUp:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isAtRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->folderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 133
    new-instance v2, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 139
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 140
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 141
    invoke-direct {p0, v4}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->isHiddenAppFolder(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->folderList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->folderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->refreshData(Ljava/util/ArrayList;)V

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 152
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    const/16 v4, 0x8

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvEmpty:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showNewFolderPanel()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->new_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->lltPicker:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->lltNewFolder:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->edtFolderName:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->edtFolderName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    .line 45
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 53
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->rootDir:Ljava/io/File;

    .line 64
    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->currentDir:Ljava/io/File;

    .line 65
    new-instance v0, Lcom/qianhe/yct/adapter/ChooseListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/adapter/ChooseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;)V

    .line 79
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->reloadFolders()V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvUp:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvNewFolder:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->fltClear:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvNewCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvNewConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 5

    .line 199
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    .line 205
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    const/4 v4, -0x2

    .line 206
    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 208
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 209
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 212
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseExportFolderBinding;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 216
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;

    return-void
.end method

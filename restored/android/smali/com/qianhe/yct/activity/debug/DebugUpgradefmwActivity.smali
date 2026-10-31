.class public Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "DebugUpgradefmwActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mPath:Ljava/lang/String;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mchooseFmwFile(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->chooseFmwFile()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDebugUpgradeDialog(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->showDebugUpgradeDialog(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private chooseFmwFile()V
    .locals 5

    .line 256
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAT80orAT85()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e9

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    new-instance v3, Lcom/leon/lfilepickerlibrary/LFilePicker;

    invoke-direct {v3}, Lcom/leon/lfilepickerlibrary/LFilePicker;-><init>()V

    invoke-virtual {v3, p0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withActivity(Landroid/app/Activity;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withRequestCode(I)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->file_selection:I

    .line 259
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withTitle(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withMutilyMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withMaxNum(I)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withStartPath(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->select_at_least_one_file:I

    .line 261
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withNotFoundBooks(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withChooseMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    const-string v1, "dat"

    const-string v2, "pkg"

    const-string v3, "fmw5"

    const-string v4, "fmw3"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withFileFilter([Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->start()V

    return-void

    .line 265
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    const-string v3, "*/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private copyFileToAppDirectory(Landroid/net/Uri;)Ljava/io/File;
    .locals 5

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 307
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    .line 312
    new-array v2, v2, [B

    .line 314
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 315
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 319
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-object v1
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    .line 330
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 336
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 341
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 343
    throw v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 341
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    move-object v4, p1

    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 347
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    return-object v2
.end method

.method private showDebugUpgradeDialog(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 4

    .line 95
    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;-><init>()V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DebugUpgradeFmwDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v2, "deviceType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "fmwPath"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "md5"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string p1, "fileSize"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".dat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "model"

    if-eqz p1, :cond_0

    .line 103
    const-string p1, "M10"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, ".pkg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    const-string p1, "980"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V

    const-string v2, "debug_upgrade_fmw"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->firmware_upgrade:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$4;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 274
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 278
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isAT80orAT85()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 279
    sget-object p1, Lcom/leon/lfilepickerlibrary/utils/Constant;->RESULT_INFO:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 280
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x0

    .line 281
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    .line 282
    iget-object p3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p3, p3, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvUpgrade:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u9009\u4e2d\u7684\u8def\u5f84\u4e3a:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 292
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6587\u4ef6URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->copyFileToAppDirectory(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u6587\u4ef6\u5df2\u590d\u5236\u5230\u79c1\u6709\u76ee\u5f55: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 298
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvUpgrade:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 301
    const-string p2, "FilePicker"

    const-string/jumbo p3, "\u5904\u7406\u6587\u4ef6\u5931\u8d25"

    nop

    nop

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 360
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    sget v1, Lcom/qianhe/yct/R$string;->tips:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->exit_page:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$6;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$6;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->cancel:I

    .line 365
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$5;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$5;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 371
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    .line 64
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvChooseFmw:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$1;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvUpgrade:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$2;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v1, "UPGRADE,CANCLE"

    invoke-direct {v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 377
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 378
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "gnssStopUpgrade"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 379
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->stopTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 188
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 189
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->stopTimer()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/FirmwareResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 0
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvPath:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->binding:Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDebugUpgradefmwBinding;->tvUpgrade:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "path"

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

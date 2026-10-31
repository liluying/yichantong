.class public Lcom/qianhe/yct/activity/LogviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LogviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

.field private volatile loadToken:I

.field private logAdapter:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HVkU5KaKztleOfrRl8XBkcHk2pc(Lcom/qianhe/yct/activity/LogviewActivity;ILjava/util/List;)V
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->logAdapter:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->appendData(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$L1kEdXSRftURii5K3Ky_nV_J8ek(Lcom/qianhe/yct/activity/LogviewActivity;Ljava/lang/String;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/LogviewActivity;->readTextFromSDCard(Ljava/lang/String;I)V

    .line 107
    new-instance p1, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/LogviewActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6qJYBI6P62g3d9IykcpSkF5Wyo(Lcom/qianhe/yct/activity/LogviewActivity;I)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->progress:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$k3lmYYbfBCBc7UM_3NIXxcUq2SI(Lcom/qianhe/yct/activity/LogviewActivity;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlogAdapter(Lcom/qianhe/yct/activity/LogviewActivity;)Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->logAdapter:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private appendOnUi(ILjava/lang/String;)V
    .locals 2

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/LogviewActivity;->appendOnUi(ILjava/util/List;)V

    return-void
.end method

.method private appendOnUi(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/LogviewActivity;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static decryptLineIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/qianhe/baselib/utils/AESCrypto;->isEncrypted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/AESCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u65e5\u5fd7\u89e3\u5bc6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private loadLog(Landroid/content/Intent;)V
    .locals 3

    .line 100
    iget v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I

    .line 101
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->resolveLogPath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->updateTitle(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->logAdapter:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->clear()V

    .line 104
    iget-object v1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/LogviewActivity;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private readTextFromSDCard(Ljava/lang/String;I)V
    .locals 5

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "\u65e5\u5fd7\u6587\u4ef6\u4e0d\u5b58\u5728!"

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p2, v1}, Lcom/qianhe/yct/activity/LogviewActivity;->appendOnUi(ILjava/lang/String;)V

    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 140
    invoke-direct {p0, p2, v1}, Lcom/qianhe/yct/activity/LogviewActivity;->appendOnUi(ILjava/lang/String;)V

    return-void

    .line 143
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0x50

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 148
    iget v3, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p2, v3, :cond_4

    .line 160
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    .line 151
    :cond_4
    :try_start_3
    invoke-static {v0}, Lcom/qianhe/yct/activity/LogviewActivity;->decryptLineIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/activity/LogviewActivity;->appendOnUi(ILjava/util/List;)V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 157
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->appendOnUi(ILjava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 144
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 161
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u65e5\u5fd7\u6587\u4ef6\u8bfb\u53d6\u9519\u8bef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->appendOnUi(ILjava/lang/String;)V

    return-void
.end method

.method private resolveLogPath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    const-string v0, "extra_log_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/qianhe/baselib/utils/LogToFile;->getLatestLogPath()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/LogviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "extra_log_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 2

    .line 123
    sget v0, Lcom/qianhe/yct/R$string;->log_list:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    .line 60
    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-static {p0}, Lcom/qianhe/yct/utils/ThemeModeManager;->applySystemBars(Landroid/app/Activity;)V

    .line 62
    invoke-static {p0}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->applyTabletNavigationBar(Landroid/app/Activity;)V

    .line 63
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->mData:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    invoke-direct {v0, p1}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->logAdapter:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    .line 66
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/LogviewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/LogviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLogviewBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLogviewBinding;->btn:Landroid/widget/Button;

    new-instance v0, Lcom/qianhe/yct/activity/LogviewActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/LogviewActivity$1;-><init>(Lcom/qianhe/yct/activity/LogviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->loadLog(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 95
    iget v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/LogviewActivity;->loadToken:I

    .line 96
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->loadLog(Landroid/content/Intent;)V

    return-void
.end method

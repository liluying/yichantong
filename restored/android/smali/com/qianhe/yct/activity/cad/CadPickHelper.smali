.class public final Lcom/qianhe/yct/activity/cad/CadPickHelper;
.super Ljava/lang/Object;
.source "CadPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;,
        Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cadEntityChooseLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private final callback:Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;

.field private final hostActivity:Landroid/app/Activity;

.field private final importFileLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private final lFilePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private pendingCadPath:Ljava/lang/String;

.field private pendingInitialPoints:[D

.field private pendingMaxCount:I

.field private final uiContext:Landroid/content/Context;

.field private final uiExecutor:Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;


# direct methods
.method public static synthetic $r8$lambda$0q-YJjEdh5dFz2zr44rYLG3NgaE(Lcom/qianhe/yct/activity/cad/CadPickHelper;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;->onPickCancelled()V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/activity/cad/CadEntityChooseContract;->parsePickResult(Landroid/content/Intent;)[D

    move-result-object p2

    if-eqz p2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingCadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object p0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingCadPath:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;->onPickResult(Ljava/lang/String;[D)V

    return-void

    .line 116
    :cond_1
    invoke-interface {p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;->onPickCancelled()V

    return-void
.end method

.method public static synthetic $r8$lambda$IBqte6Bob4ywrSmuQ62s3WUBQFU(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VWMimKOh4MbCvCajroeHCt3JK6I(Lcom/qianhe/yct/activity/cad/CadPickHelper;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p2

    sget-object v0, Lcom/leon/lfilepickerlibrary/utils/Constant;->RESULT_INFO:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 98
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingMaxCount:I

    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingInitialPoints:[D

    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->openCadPick(Ljava/lang/String;I[D)V

    return-void

    .line 101
    :cond_1
    invoke-interface {p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;->onPickCancelled()V

    return-void

    .line 93
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;->onPickCancelled()V

    return-void
.end method

.method public static synthetic $r8$lambda$aKGy8QK4q2RVrmF594YFU3tqRzI(Lcom/qianhe/yct/activity/cad/CadPickHelper;Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingMaxCount:I

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->loadCadFromUri(Landroid/net/Uri;I)V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$iHwG9Y4m8XHlgWIWNcsNGCaRPYk(Lcom/qianhe/yct/activity/cad/CadPickHelper;Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingInitialPoints:[D

    .line 190
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->openCadPick(Ljava/lang/String;I[D)V

    return-void

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->callback:Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;

    .line 192
    invoke-interface {p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;->onFileLoadFailed()V

    return-void
.end method

.method public static synthetic $r8$lambda$x9lnhgN7JHfhRaHiKFLBdZkqyDo(Lcom/qianhe/yct/activity/cad/CadPickHelper;Landroid/net/Uri;I)V
    .locals 2

    .line 187
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->copyUriToCache(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->uiExecutor:Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;

    new-instance v1, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V
    .locals 7

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/ComponentActivity;)V

    move-object v2, p1

    move-object v3, p1

    move-object v4, p1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/activity/result/ActivityResultCaller;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Context;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;)V

    return-void
.end method

.method private constructor <init>(Landroidx/activity/result/ActivityResultCaller;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Context;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingMaxCount:I

    .line 75
    iput-object p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->hostActivity:Landroid/app/Activity;

    .line 76
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->appContext:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->uiContext:Landroid/content/Context;

    .line 78
    iput-object p5, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->callback:Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;

    .line 79
    iput-object p6, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->uiExecutor:Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;

    .line 81
    new-instance p2, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance p3, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;)V

    invoke-interface {p1, p2, p3}, Landroidx/activity/result/ActivityResultCaller;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->importFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 89
    new-instance p2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance p3, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p5}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    invoke-interface {p1, p2, p3}, Landroidx/activity/result/ActivityResultCaller;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->lFilePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 105
    new-instance p2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance p3, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p5}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    invoke-interface {p1, p2, p3}, Landroidx/activity/result/ActivityResultCaller;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->cadEntityChooseLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V
    .locals 7

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/Fragment;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/activity/result/ActivityResultCaller;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Context;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;)V

    return-void
.end method

.method private copyUriToCache(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 199
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->queryDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "dwg"

    if-nez v1, :cond_1

    .line 202
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, ".dxf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v2, "dxf"

    goto :goto_0

    .line 205
    :cond_0
    const-string v1, ".dwg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 209
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "cad_pick"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v3

    .line 213
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cad_pick_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p1, :cond_4

    .line 226
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    nop

    goto :goto_6

    :cond_3
    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    const/high16 v2, 0x10000

    .line 219
    :try_start_3
    new-array v2, v2, [B

    .line 221
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5

    const/4 v5, 0x0

    .line 222
    invoke-virtual {v0, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v2

    .line 214
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 227
    :goto_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    return-object v3
.end method

.method private loadCadFromUri(Landroid/net/Uri;I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->appContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qianhe/baselib/utils/FileUtil;->getFilePathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingInitialPoints:[D

    invoke-direct {p0, v0, p2, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->openCadPick(Ljava/lang/String;I[D)V

    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;Landroid/net/Uri;I)V

    const-string p1, "cad-pick-copy"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private openCadPick(Ljava/lang/String;I[D)V
    .locals 2

    .line 175
    iput-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingCadPath:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingInitialPoints:[D

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->cadEntityChooseLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->uiContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->create(Landroid/content/Context;Ljava/lang/String;I[D)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private queryDisplayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 236
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 239
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 235
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    if-eqz p1, :cond_1

    .line 242
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private startLFilePicker()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->lFilePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Lcom/leon/lfilepickerlibrary/LFilePicker;

    invoke-direct {v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->hostActivity:Landroid/app/Activity;

    .line 160
    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withActivity(Landroid/app/Activity;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->uiContext:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->file_selection:I

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withTitle(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withMutilyMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    iget v2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingMaxCount:I

    .line 163
    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withMaxNum(I)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->uiContext:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->select_at_least_one_file:I

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withNotFoundBooks(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    const/4 v2, 0x1

    .line 165
    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withChooseMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    const-string v2, "dwg"

    const-string v3, "dxf"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withFileFilter([Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public pickFromFile(I)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0, p1, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public pickFromFile(Ljava/lang/String;I[D)V
    .locals 1

    .line 145
    iput-object p3, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingInitialPoints:[D

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->openCadPick(Ljava/lang/String;I[D)V

    return-void

    .line 150
    :cond_0
    iput p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pendingMaxCount:I

    .line 151
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isAT80orAT85()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->startLFilePicker()V

    return-void

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper;->importFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

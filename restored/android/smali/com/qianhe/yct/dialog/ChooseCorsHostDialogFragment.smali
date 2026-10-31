.class public Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseCorsHostDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;,
        Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnDismissListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

.field private corsListAdapter:Lcom/qianhe/yct/adapter/HostListAdapter;

.field private currentUsedCorsId:J

.field private currentUsedCorsName:Ljava/lang/String;

.field private mGGa:Lcom/qianhe/baselib/bean/GGAEntity;

.field private onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;

.field private selectionConfirmed:Z


# direct methods
.method public static synthetic $r8$lambda$0ZQfJUH9mL9aFllAwNtjgF3PgAA(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->selectionConfirmed:Z

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 98
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;->onCustom()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$KCJoyfr0PjRzqei_GJ21qbywewk(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$VyioaqGd4FK3Zgl4J6rXZlXMUe4(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->selectionConfirmed:Z

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 72
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;->onConfirm(Lcom/qianhe/baselib/bean/CorsEntity;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$tMW_8vowsaWCS180-drsjkNdqWA(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    iput-object p2, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateCORS(Lcom/qianhe/baselib/bean/CorsEntity;)I

    .line 154
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->refreshCorsList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetonDismissListener(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnDismissListener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconfirmDeleteProvider(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->confirmDeleteProvider(Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshCorsList(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->refreshCorsList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEditProviderDialog(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->showEditProviderDialog(Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsId:J

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->selectionConfirmed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private buildCorsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryCORS(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->loadJsonCors()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    .line 114
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 113
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u89e3\u6790cors.json\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private confirmDeleteProvider(Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 4

    .line 160
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->isCurrentUsedProvider(Lcom/qianhe/baselib/bean/CorsEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget p1, Lcom/qianhe/yct/R$string;->cannot_delete_current_provider:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 165
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/qianhe/yct/R$string;->want_to_delete:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tip"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "btnStr"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "TipsDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private isCurrentUsedProvider(Lcom/qianhe/baselib/bean/CorsEntity;)Z
    .locals 8

    .line 133
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    iget-wide v5, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsId:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    return v2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsName:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private loadJsonCors()Ljava/lang/String;
    .locals 14

    .line 184
    const-string v0, ","

    .line 185
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 188
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 190
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "cors_en.json"

    const-string v7, "cors.json"

    if-eqz v2, :cond_1

    .line 191
    :try_start_1
    invoke-static {v0, v1, v4, v5}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, v7}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    invoke-direct {p0, v6}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->mGGa:Lcom/qianhe/baselib/bean/GGAEntity;

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_2

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    cmpl-double v12, v10, v8

    if-eqz v12, :cond_2

    iget-wide v12, v2, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    cmpl-double v2, v12, v8

    if-eqz v2, :cond_2

    invoke-static {v10, v11, v12, v13}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-direct {p0, v7}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->mGGa:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v2, :cond_3

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    cmpl-double v12, v10, v8

    if-nez v12, :cond_4

    iget-wide v10, v2, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    cmpl-double v2, v10, v8

    if-nez v2, :cond_4

    :cond_3
    invoke-static {v0, v1, v4, v5}, Lcom/qianhe/yct/utils/LocationUtils;->isChinaMainland(DD)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    invoke-direct {p0, v7}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_4
    invoke-direct {p0, v6}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->readFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_5
    return-object v3
.end method

.method private readFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 215
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 217
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 222
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bfb\u53d6assets\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 224
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private refreshCorsList()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->corsListAdapter:Lcom/qianhe/yct/adapter/HostListAdapter;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->buildCorsList()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsId:J

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/adapter/HostListAdapter;->refreshData(Ljava/util/List;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showEditProviderDialog(Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 6

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CorsProviderInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 145
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;-><init>()V

    .line 146
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    sget v3, Lcom/qianhe/yct/R$string;->edit_service_provider_name:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    const-string v4, "providerName"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "excludeCorsId"

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 150
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 151
    new-instance v2, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;Lcom/qianhe/baselib/bean/CorsEntity;)V

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CorsProviderInputDialogFragment$OnConfirmListener;)V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    .line 52
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const-string v1, "gga"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/GGAEntity;

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->mGGa:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 61
    const-string v1, "currentUsedCorsId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsId:J

    .line 62
    const-string v1, "currentUsedCorsName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsName:Ljava/lang/String;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->buildCorsList()Ljava/util/List;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/qianhe/yct/adapter/HostListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/qianhe/yct/adapter/HostListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->corsListAdapter:Lcom/qianhe/yct/adapter/HostListAdapter;

    .line 67
    iget-wide v2, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsId:J

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->currentUsedCorsName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/qianhe/yct/adapter/HostListAdapter;->refreshData(Ljava/util/List;JLjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->corsListAdapter:Lcom/qianhe/yct/adapter/HostListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->corsListAdapter:Lcom/qianhe/yct/adapter/HostListAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/HostListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->corsListAdapter:Lcom/qianhe/yct/adapter/HostListAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/HostListAdapter;->setOnMenuListener(Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->tvCreate:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseCorsBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 250
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    .line 256
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 257
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 259
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;

    return-void
.end method

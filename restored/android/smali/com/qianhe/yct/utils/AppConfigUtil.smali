.class public abstract Lcom/qianhe/yct/utils/AppConfigUtil;
.super Ljava/lang/Object;
.source "AppConfigUtil.java"


# static fields
.field private static lastLoggedConfigDigest:Ljava/lang/String;

.field private static loggedMissingStoragePermission:Z


# direct methods
.method public static createDefaultConfig()Lcom/qianhe/yct/bean/AppConfig;
    .locals 1

    .line 202
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    return-object v0
.end method

.method public static loadAppConfig()Lcom/qianhe/yct/bean/AppConfig;
    .locals 4

    .line 87
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 88
    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 95
    sput-boolean v1, Lcom/qianhe/yct/utils/AppConfigUtil;->loggedMissingStoragePermission:Z

    .line 97
    :try_start_0
    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->mkConfigDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/io/File;

    const-string v2, "app_config.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string/jumbo v0, "\u521d\u59cb\u5316\u914d\u7f6e\u6587\u4ef6\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    .line 103
    invoke-static {v0}, Lcom/qianhe/yct/utils/AppConfigUtil;->saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u914d\u7f6e\u6587\u4ef6\u4e0d\u53ef\u8bfb\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    return-object v0

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 117
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 119
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-class v2, Lcom/qianhe/yct/bean/AppConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/AppConfig;

    if-nez v1, :cond_4

    .line 122
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    return-object v0

    .line 123
    :cond_4
    invoke-static {v0}, Lcom/qianhe/yct/utils/AppConfigUtil;->logConfigDetailsIfChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 112
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u89e3\u6790\u914d\u7f6e\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    return-object v0

    :catch_1
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bfb\u53d6\u914d\u7f6e\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    return-object v0

    .line 89
    :cond_5
    :goto_3
    sget-boolean v0, Lcom/qianhe/yct/utils/AppConfigUtil;->loggedMissingStoragePermission:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 90
    sput-boolean v0, Lcom/qianhe/yct/utils/AppConfigUtil;->loggedMissingStoragePermission:Z

    .line 91
    const-string/jumbo v0, "\u8bfb\u53d6\u914d\u7f6e\u6587\u4ef6\uff1a\u65e0\u5b58\u50a8\u6743\u9650\uff0c\u6682\u7528\u9ed8\u8ba4\u914d\u7f6e\uff0c\u6388\u6743\u540e\u518d\u52a0\u8f7d"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 93
    :cond_6
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    return-object v0
.end method

.method private static logConfigDetailsIfChanged(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/qianhe/yct/utils/AppConfigUtil;->lastLoggedConfigDigest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 144
    :cond_1
    sput-object v0, Lcom/qianhe/yct/utils/AppConfigUtil;->lastLoggedConfigDigest:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u8be6\u60c5 -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static saveAppConfig(Lcom/qianhe/yct/bean/AppConfig;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 48
    const-string p0, "saveAppConfig: appConfig is null"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0

    .line 52
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 53
    invoke-static {v1}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/FileUtil;->mkConfigDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/io/File;

    const-string v3, "app_config.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 67
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/qianhe/yct/event/ReloadAppConfigEvent;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/event/ReloadAppConfigEvent;-><init>(Lcom/qianhe/yct/bean/AppConfig;)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/qianhe/yct/application/YCTApplication;->setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u914d\u7f6e\u6587\u4ef6\u4fdd\u5b58\u6210\u529f\uff0c\u8def\u5f84\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const-string p0, "saveAppConfig: \u65e0\u5b58\u50a8\u6743\u9650\uff0c\u8df3\u8fc7\u5199\u5165"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 76
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4fdd\u5b58\u914d\u7f6e\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v0
.end method

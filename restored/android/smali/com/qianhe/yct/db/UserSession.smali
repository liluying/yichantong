.class public Lcom/qianhe/yct/db/UserSession;
.super Ljava/lang/Object;
.source "UserSession.java"


# static fields
.field private static volatile instance:Lcom/qianhe/yct/db/UserSession;


# instance fields
.field private account:Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private deviceId:Ljava/lang/String;

.field private loaded:Z

.field private loadedFromDisk:Z

.field private name:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    return-void
.end method

.method static attach(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->getWithoutLoad()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    .line 35
    iput-object p0, v0, Lcom/qianhe/yct/db/UserSession;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    invoke-direct {v0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    return-void
.end method

.method private clearLegacySharedPreferences()V
    .locals 3

    .line 288
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    .line 291
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_token"

    .line 292
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_account"

    .line 293
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_name"

    .line 294
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    .line 295
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private clearLoginIfFreshInstall(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 194
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "user_session_install_mark"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 203
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 204
    iput-object v3, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 205
    iput-object v3, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 207
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/UserSession;->persistTo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5378\u8f7d\u91cd\u88c5\uff1a\u5df2\u6e05\u9664\u767b\u5f55\u4fe1\u606f\uff0c\u4fdd\u7559 user_id="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 210
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized ensureLoaded()V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 136
    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/qianhe/yct/db/UserSession;->loadedFromDisk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->loadFromDatabaseOrMigrate()V

    .line 142
    iput-boolean v1, p0, Lcom/qianhe/yct/db/UserSession;->loadedFromDisk:Z

    .line 143
    iput-boolean v1, p0, Lcom/qianhe/yct/db/UserSession;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 146
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/qianhe/yct/db/UserSession;->loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 147
    monitor-exit p0

    return-void

    .line 149
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->hydrateFromSharedPreferences()V

    .line 150
    iput-boolean v1, p0, Lcom/qianhe/yct/db/UserSession;->loaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static get()Lcom/qianhe/yct/db/UserSession;
    .locals 1

    .line 49
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->getWithoutLoad()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    .line 50
    invoke-direct {v0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    return-object v0
.end method

.method private static getWithoutLoad()Lcom/qianhe/yct/db/UserSession;
    .locals 2

    .line 40
    sget-object v0, Lcom/qianhe/yct/db/UserSession;->instance:Lcom/qianhe/yct/db/UserSession;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/qianhe/yct/db/UserSession;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/db/UserSession;->instance:Lcom/qianhe/yct/db/UserSession;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qianhe/yct/db/UserSession;

    invoke-direct {v1}, Lcom/qianhe/yct/db/UserSession;-><init>()V

    sput-object v1, Lcom/qianhe/yct/db/UserSession;->instance:Lcom/qianhe/yct/db/UserSession;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_2
    sget-object v0, Lcom/qianhe/yct/db/UserSession;->instance:Lcom/qianhe/yct/db/UserSession;

    return-object v0
.end method

.method private hydrateFromSharedPreferences()V
    .locals 3

    .line 215
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    const-string v1, "deviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    .line 219
    const-string/jumbo v1, "user_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 220
    const-string/jumbo v1, "user_account"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 221
    const-string/jumbo v1, "user_name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    .line 222
    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/UserSession;->readUserIdFromSp(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    return-void
.end method

.method private loadFromDatabaseOrMigrate()V
    .locals 11

    .line 154
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->writableDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    .line 158
    :try_start_0
    const-string/jumbo v2, "user"

    const-string v8, "id DESC"

    const-string v9, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 159
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, v10}, Lcom/qianhe/yct/db/UserSession;->readCursor(Landroid/database/Cursor;)V

    .line 161
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/UserSession;->clearLoginIfFreshInstall(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 165
    :goto_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserSession load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 175
    :cond_3
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/UserSession;->migrateFromSharedPreferences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 176
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/UserSession;->clearLoginIfFreshInstall(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    .line 171
    :cond_4
    :goto_3
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/UserSession;->persistTo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    invoke-direct {p0, v1}, Lcom/qianhe/yct/db/UserSession;->clearLoginIfFreshInstall(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :goto_4
    if-eqz v10, :cond_5

    .line 167
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_5
    throw v0
.end method

.method private migrateFromSharedPreferences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 180
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->hydrateFromSharedPreferences()V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/db/UserSession;->persistTo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserSession \u5df2\u4ece SharedPreferences \u517c\u5bb9\u65e7\u767b\u5f55\u6570\u636e, user_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private persist()V
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->writableDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/db/UserSession;->persistTo(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private persistTo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 262
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "deviceId"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string/jumbo v3, "user_token"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string/jumbo v3, "user_account"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v2, v1

    :cond_4
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-wide v1, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 270
    :try_start_0
    const-string/jumbo v3, "user"

    const-string v2, "id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "id DESC"

    const-string v10, "1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    const-string/jumbo v3, "user"

    if-eqz p1, :cond_5

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .line 272
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 273
    const-string v1, "id = ?"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, p1

    goto :goto_4

    .line 275
    :cond_5
    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 277
    :goto_3
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->clearLegacySharedPreferences()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_6

    .line 281
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 279
    :goto_4
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserSession persist: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_6

    .line 281
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    return-void

    :goto_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_7
    throw v0
.end method

.method private readCursor(Landroid/database/Cursor;)V
    .locals 4

    .line 240
    const-string v0, "deviceId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 241
    const-string v1, ""

    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    .line 242
    const-string/jumbo v0, "user_token"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "user_account"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 245
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 246
    const-string/jumbo v0, "user_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 247
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "user_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_4

    :cond_4
    const-wide/16 v2, 0x0

    :goto_4
    iput-wide v2, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    .line 250
    iget-object p1, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    if-nez p1, :cond_5

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    if-nez p1, :cond_6

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 252
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    if-nez p1, :cond_7

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 253
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    if-nez p1, :cond_8

    iput-object v1, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method private readUserIdFromSp(Landroid/content/SharedPreferences;)J
    .locals 4

    .line 227
    const-string/jumbo v0, "user_id"

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 230
    :catch_0
    :try_start_1
    const-string v3, "0"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    :cond_0
    return-wide v1
.end method

.method private writableDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 304
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 305
    invoke-static {v1}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    .line 310
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserSession db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearAll()V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    .line 131
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearLoginInfo()V
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAccount()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 69
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getUserId()J
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 84
    iget-wide v0, p0, Lcom/qianhe/yct/db/UserSession;->userId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isLoggedIn()Z
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized saveDeviceId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized saveLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/qianhe/yct/db/UserSession;->deviceId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    const-string p2, ""

    :goto_1
    iput-object p2, p0, Lcom/qianhe/yct/db/UserSession;->token:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 97
    :cond_2
    const-string p3, ""

    :goto_2
    iput-object p3, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    if-eqz p4, :cond_3

    goto :goto_3

    .line 98
    :cond_3
    const-string p4, ""

    :goto_3
    iput-object p4, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    .line 99
    iput-wide p5, p0, Lcom/qianhe/yct/db/UserSession;->userId:J

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateAccount(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/db/UserSession;->account:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->ensureLoaded()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/db/UserSession;->name:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/qianhe/yct/db/UserSession;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

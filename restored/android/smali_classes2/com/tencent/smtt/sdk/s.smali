.class Lcom/tencent/smtt/sdk/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Lcom/tencent/smtt/export/external/DexLoader;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 0
    move-object/from16 v0, p5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->a:Landroid/content/Context;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->d:[Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v4, "TbsDexOpt"

    iput-object v4, p0, Lcom/tencent/smtt/sdk/s;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->g:Ljava/lang/String;

    const-string v3, "construction start..."

    const-string v4, "TbsWizard"

    invoke-static {v4, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    array-length v3, v0

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    :goto_0
    iput-object p3, p0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/s;->d:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/smtt/sdk/s;->f:Ljava/lang/String;

    const/4 p3, 0x0

    :goto_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#2 mDexFileList["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/s;->d:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p3, v1

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new DexLoader #2 libraryPath is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mCallerAppContext is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->a:Landroid/content/Context;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " dexOutPutDir is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/smtt/export/external/DexLoader;

    iget-object v7, p0, Lcom/tencent/smtt/sdk/s;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/tencent/smtt/sdk/s;->d:[Ljava/lang/String;

    sget-object v10, Lcom/tencent/smtt/sdk/QbSdk;->o:Ljava/util/Map;

    move-object v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v5, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/s;->a(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->o:Ljava/util/Map;

    const-string p3, "multi_process_type_default"

    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/QbSdk;->initTbsSettings(Ljava/util/Map;)V

    const-string p2, "[MultiProcess]"

    const-string p3, "default not enable multi process!"

    invoke-static {p2, p3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->o:Ljava/util/Map;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p4, v1, [Ljava/lang/Class;

    const-class v0, Ljava/util/Map;

    aput-object v0, p4, v2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v1, "initTbsSettings"

    invoke-virtual {p3, p2, v1, p4, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/s;->b(Landroid/content/Context;)V

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/s;->c(Landroid/content/Context;)I

    move-result p1

    if-ltz p1, :cond_5

    const-string p1, "construction end..."

    invoke-static {v4, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TbsWizard init error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; msg: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/s;->g:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p4, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsWizard paramter error:-1callerContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "hostcontext"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "isEmpty"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "dexfileList"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .line 0
    const-string v0, "TbsWizard"

    :try_start_0
    const-string v1, "tbss"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initTbsSettingsBySP key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value is "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stack is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;)I
    .locals 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTesRuntimeEnvironment callerContext is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mHostContext is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDexLoader is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mtbsInstallLocation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mDexOptPath is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/smtt/sdk/s;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TbsWizard"

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v8, Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v10, v4, v11

    const/4 v12, 0x4

    aput-object v10, v4, v12

    const/4 v13, 0x5

    aput-object v10, v4, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x6

    aput-object v14, v4, v15

    const/4 v14, 0x7

    aput-object v10, v4, v14

    const/16 v16, 0x1

    iget-object v7, v0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    const/16 v17, 0x2

    iget-object v9, v0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    const/16 v18, 0x3

    iget-object v11, v0, Lcom/tencent/smtt/sdk/s;->f:Ljava/lang/String;

    const v19, 0xacfe

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->a()Ljava/lang/String;

    move-result-object v20

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v7, v3, v16

    aput-object v2, v3, v17

    aput-object v9, v3, v18

    aput-object v11, v3, v12

    const-string v7, "4.3.0.386"

    aput-object v7, v3, v13

    aput-object v19, v3, v15

    aput-object v20, v3, v14

    const-string v7, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v9, "initTesRuntimeEnvironment"

    invoke-virtual {v2, v7, v9, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/s;->d()V

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/s;->e()V

    iget-object v2, v0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v3, v13, [Ljava/lang/Class;

    aput-object v5, v3, v6

    aput-object v5, v3, v16

    aput-object v8, v3, v17

    aput-object v10, v3, v18

    aput-object v10, v3, v12

    iget-object v4, v0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    iget-object v5, v0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/smtt/sdk/s;->f:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v1, v10, v6

    aput-object v4, v10, v16

    aput-object v2, v10, v17

    aput-object v5, v10, v18

    aput-object v8, v10, v12

    invoke-virtual {v2, v7, v9, v3, v10}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v1, v2, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    iget-object v3, v0, Lcom/tencent/smtt/sdk/s;->a:Landroid/content/Context;

    const/16 v4, 0x141

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const/4 v1, -0x5

    goto :goto_0

    :cond_3
    const/4 v1, -0x4

    :goto_0
    if-gez v1, :cond_6

    iget-object v2, v0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v3, v6, [Ljava/lang/Class;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "getLoadFailureDetails"

    invoke-virtual {v2, v7, v5, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; th: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/smtt/sdk/s;->g:Ljava/lang/String;

    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/String;

    :goto_1
    iput-object v2, v0, Lcom/tencent/smtt/sdk/s;->g:Ljava/lang/String;

    :cond_5
    return v1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "4.3.0.386"

    aput-object v3, v1, v4

    const-string v3, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v4, "setTesSdkVersionName"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const v1, 0xacfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v3, "VERSION"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/smtt/export/external/DexLoader;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 13

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, [Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, [Ljava/lang/Object;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v3, v4, [Ljava/lang/Object;

    const-string v9, "com.tencent.smtt.util.CrashTracker"

    const-string v10, "getCrashExtraInfo"

    const/4 v11, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v12, v1, v4

    aput-object v9, v1, v5

    aput-object v10, v1, v6

    aput-object v11, v1, v7

    aput-object v3, v1, v8

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "invokeStaticMethod"

    invoke-virtual {v0, v3, v5, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v10, v11, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ReaderPackName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ReaderPackVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1
    if-nez v11, :cond_2

    const-string v0, "X5 core get nothing..."

    return-object v0

    :cond_2
    return-object v11
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "check_tbs_validity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/smtt/utils/n;->b(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    const/4 p6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/s;->b:Landroid/content/Context;

    :cond_0
    iput-object p3, p0, Lcom/tencent/smtt/sdk/s;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/s;->d:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/smtt/sdk/s;->f:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->o:Ljava/util/Map;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p4, v0, [Ljava/lang/Class;

    const-class p5, Ljava/util/Map;

    aput-object p5, p4, p6

    new-array p5, v0, [Ljava/lang/Object;

    aput-object p2, p5, p6

    const-string p2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string p6, "initTbsSettings"

    invoke-virtual {p3, p2, p6, p4, p5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/s;->c(Landroid/content/Context;)I

    move-result p1

    if-ltz p1, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "continueInit init error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; msg: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/s;->g:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Landroid/os/Bundle;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "installLocalQbApk"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v4

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 13

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, [Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, [Ljava/lang/Object;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v3, v4, [Ljava/lang/Object;

    const-string v9, "com.tencent.smtt.util.CrashTracker"

    const-string v10, "getCrashExtraCacheInfo"

    const/4 v11, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v12, v1, v4

    aput-object v9, v1, v5

    aput-object v10, v1, v6

    aput-object v11, v1, v7

    aput-object v3, v1, v8

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "invokeStaticMethod"

    invoke-virtual {v0, v3, v5, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v10, v11, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ReaderPackName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ReaderPackVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1
    if-nez v11, :cond_2

    const-string v0, "X5 core get cache nothing..."

    return-object v0

    :cond_2
    return-object v11
.end method

.method public c()Lcom/tencent/smtt/export/external/DexLoader;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/s;->e:Lcom/tencent/smtt/export/external/DexLoader;

    return-object v0
.end method

.class Lcom/tencent/smtt/sdk/ReaderWizard;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;

.field private b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    return-void
.end method

.method private static a()Lcom/tencent/smtt/export/external/DexLoader;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->c()Lcom/tencent/smtt/sdk/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/s;->c()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getResDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v3, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "com.tencent.tbs.reader.TbsReader"

    const-string v0, "getResDrawable"

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResString(I)Ljava/lang/String;
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v3, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "com.tencent.tbs.reader.TbsReader"

    const-string v0, "getResString"

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static isSupportCurrentPlatform(Landroid/content/Context;)Z
    .locals 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "com.tencent.tbs.reader.TbsReader"

    const-string v4, "isSupportCurrentPlatform"

    invoke-virtual {v2, p0, v4, v3, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static isSupportExt(Ljava/lang/String;)Z
    .locals 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/ReaderWizard;->a()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "com.tencent.tbs.reader.TbsReader"

    const-string v4, "isSupportExt"

    invoke-virtual {v2, p0, v4, v3, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public checkPlugin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v9, 0x0

    const-string v10, "ReaderWizard"

    if-nez v3, :cond_0

    const-string p1, "checkPlugin:Unexpect null object!"

    :goto_0
    nop

    nop

    nop

    return v9

    :cond_0
    new-array v7, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v7, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v7, v1

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v7, v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p3, v8, v1

    aput-object p4, v8, v0

    const-string v5, "com.tencent.tbs.reader.TbsReader"

    const-string v6, "checkPlugin"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const-string p1, "Unexpect return value type of call checkPlugin!"

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public destroy(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.reader.TbsReader"

    const-string v4, "destroy"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p1, "ReaderWizard"

    const-string v0, "destroy:Unexpect null object!"

    nop

    nop

    nop

    return-void
.end method

.method public doCommand(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v4, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "doCommand:Unexpect null object!"

    nop

    nop

    nop

    return-void

    :cond_0
    new-array v8, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v8, v2

    const-class v5, Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v5, v8, v0

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object p3, v9, v1

    aput-object p4, v9, v0

    const-string v6, "com.tencent.tbs.reader.TbsReader"

    const-string v7, "doCommand"

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getTbsReader()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.reader.TbsReader"

    invoke-virtual {v0, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initTbsReader(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 11

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v9, 0x0

    const-string v10, "ReaderWizard"

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-array v7, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v7, v9

    const-class v4, Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v4, v7, v1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v7, v0

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object v3, v8, v1

    aput-object p0, v8, v0

    const-string v5, "com.tencent.tbs.reader.TbsReader"

    const-string v6, "init"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const-string p1, "Unexpect return value type of call initTbsReader!"

    :goto_0
    nop

    nop

    nop

    return v9

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    const-string p1, "initTbsReader:Unexpect null object!"

    goto :goto_0
.end method

.method public onCallBackAction(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;->onCallBackAction(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(Ljava/lang/Object;II)V
    .locals 9

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v3, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "onSizeChanged:Unexpect null object!"

    nop

    nop

    nop

    return-void

    :cond_0
    new-array v7, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v7, v1

    aput-object v4, v7, v0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v1

    aput-object p2, v8, v0

    const-string v5, "com.tencent.tbs.reader.TbsReader"

    const-string v6, "onSizeChanged"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public openFile(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/FrameLayout;)Z
    .locals 11

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v9, 0x0

    const-string v10, "ReaderWizard"

    if-nez v3, :cond_0

    const-string p1, "openFile:Unexpect null object!"

    :goto_0
    nop

    nop

    nop

    return v9

    :cond_0
    new-array v7, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v7, v9

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v7, v1

    const-class v4, Landroid/widget/FrameLayout;

    aput-object v4, v7, v0

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p3, v8, v1

    aput-object p4, v8, v0

    const-string v5, "com.tencent.tbs.reader.TbsReader"

    const-string v6, "openFile"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const-string p1, "Unexpect return value type of call openFile!"

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public userStatistics(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ReaderWizard;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v2, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "userStatistics:Unexpect null object!"

    nop

    nop

    nop

    return-void

    :cond_0
    new-array v6, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v6, v0

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    const-string v4, "com.tencent.tbs.reader.TbsReader"

    const-string v5, "userStatistics"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

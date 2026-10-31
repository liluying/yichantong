.class public Lcom/cmcc/sy/hap/inner/ApplicationProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field private static OooO00o:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static OooO00o()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/inner/ApplicationProvider;->OooO00o:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sy/hap/inner/ApplicationProvider;->OooO00o:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/sy/hap/inner/OooO0OO;->OooO00o(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmcc/sy/hap/inner/ApplicationProvider;->OooO00o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/OooO00o;->OooO00o(Landroid/content/ContentResolver;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

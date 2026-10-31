.class public abstract Lcom/cmcc/sy/hap/nav/OooO00o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const-string v0, "cmcc_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static OooO00o()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO00o;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO00o(Landroid/content/ContentResolver;)V
    .locals 0

    .line 0
    return-void
.end method

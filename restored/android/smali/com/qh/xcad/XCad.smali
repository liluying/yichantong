.class public final Lcom/qh/xcad/XCad;
.super Ljava/lang/Object;
.source "XCad.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string/jumbo v0, "xcadforjava"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getLastError()Ljava/lang/String;
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native parseDwg(Ljava/lang/String;)[B
.end method

.method public static native parseDxf(Ljava/lang/String;)[B
.end method

.method public static native setupLogger(Ljava/lang/String;)I
.end method

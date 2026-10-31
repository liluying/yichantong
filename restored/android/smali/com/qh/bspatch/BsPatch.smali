.class public final Lcom/qh/bspatch/BsPatch;
.super Ljava/lang/Object;
.source "BsPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/bspatch/BsPatch$Result;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "bspatch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qh/bspatch/BsPatch$Result;
.end method

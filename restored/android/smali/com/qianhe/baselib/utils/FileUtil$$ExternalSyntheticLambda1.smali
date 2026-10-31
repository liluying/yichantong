.class public final synthetic Lcom/qianhe/baselib/utils/FileUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/qianhe/baselib/utils/FileUtil;->$r8$lambda$aKwTdJ03x1sPnbGSEdob2kHvP68(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

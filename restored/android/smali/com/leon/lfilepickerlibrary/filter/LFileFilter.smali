.class public Lcom/leon/lfilepickerlibrary/filter/LFileFilter;
.super Ljava/lang/Object;
.source "LFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private mTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;->mTypes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 5

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;->mTypes:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;->mTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;->mTypes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/filter/LFileFilter;->mTypes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

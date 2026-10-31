.class public Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;
.super Ljava/lang/Object;
.source "ChineseEnglishLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private maxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->maxLength:I

    return-void
.end method

.method private calculateLength(Ljava/lang/String;)I
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private isChinese(C)Z
    .locals 1

    .line 48
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p1

    .line 49
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isEnglish(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isValidCharacter(C)Z
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->isChinese(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->isEnglish(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->calculateLength(Ljava/lang/String;)I

    move-result v0

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->calculateLength(Ljava/lang/String;)I

    move-result v1

    .line 23
    invoke-interface {p4, p5, p6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->calculateLength(Ljava/lang/String;)I

    move-result p4

    sub-int/2addr v0, p4

    add-int/2addr v0, v1

    iget p4, p0, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->maxLength:I

    if-le v0, p4, :cond_0

    .line 25
    const-string p1, ""

    return-object p1

    .line 29
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move p5, p2

    :goto_0
    if-ge p5, p3, :cond_2

    .line 31
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    .line 32
    invoke-direct {p0, p6}, Lcom/qianhe/yct/utils/ChineseEnglishLengthFilter;->isValidCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p3, p2

    if-ne p1, p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

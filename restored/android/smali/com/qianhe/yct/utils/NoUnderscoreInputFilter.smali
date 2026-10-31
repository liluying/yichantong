.class public final Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;
.super Ljava/lang/Object;
.source "NoUnderscoreInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field public static final INSTANCE:Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;-><init>()V

    sput-object v0, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->INSTANCE:Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/widget/EditText;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 49
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 50
    instance-of v5, v5, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;

    if-eqz v5, :cond_1

    :goto_1
    return-void

    :cond_1
    add-int/2addr v4, v1

    goto :goto_0

    .line 54
    :cond_2
    array-length v3, v2

    add-int/2addr v3, v1

    new-array v1, v3, [Landroid/text/InputFilter;

    .line 55
    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    array-length v0, v2

    sget-object v2, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->INSTANCE:Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;

    aput-object v2, v1, v0

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 59
    :cond_3
    new-array v1, v1, [Landroid/text/InputFilter;

    sget-object v2, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->INSTANCE:Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static containsUnderscore(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const/4 p4, 0x0

    if-eqz p1, :cond_6

    if-lt p2, p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p5, 0x0

    move p6, p2

    move-object v0, p4

    :goto_0
    if-ge p6, p3, :cond_3

    .line 26
    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const/4 p5, 0x1

    if-nez v0, :cond_2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p3, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    invoke-virtual {v0, p1, p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_3
    if-nez p5, :cond_4

    return-object p4

    :cond_4
    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1

    :cond_6
    :goto_2
    return-object p4
.end method

.class public abstract Lcom/qianhe/yct/utils/ConfigLayoutHelper;
.super Ljava/lang/Object;
.source "ConfigLayoutHelper.java"


# direct methods
.method public static applyContentDirectionByLanguage(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isArOrFa(Landroid/content/Context;)Z

    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 27
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyTextAlignment(Landroid/view/View;Z)V

    return-void
.end method

.method private static applyHorizontalGravity(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const v0, 0x800003

    .line 74
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyHorizontalGravity(Landroid/widget/TextView;ZI)V

    return-void
.end method

.method private static applyHorizontalGravity(Landroid/widget/TextView;ZI)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    if-nez p1, :cond_0

    const/16 p1, 0x10

    :cond_0
    or-int/2addr p1, p2

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public static applyLocaleNameStyle(Landroid/widget/TextView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->setTextAlignment(I)V

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_1

    const/16 v0, 0x10

    :cond_1
    const v1, 0x800003

    or-int/2addr v0, v1

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public static applySpinnerItemStyle(Landroid/widget/TextView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isArOrFa(Landroid/content/Context;)Z

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 v1, 0x5

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setTextAlignment(I)V

    const v1, 0x800003

    .line 94
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyHorizontalGravity(Landroid/widget/TextView;ZI)V

    return-void
.end method

.method private static applyTextAlignment(Landroid/view/View;Z)V
    .locals 3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/qianhe/yct/R$id;->tvReset:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    instance-of v0, p0, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_1

    .line 35
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyHorizontalGravity(Landroid/widget/TextView;Z)V

    return-void

    .line 38
    :cond_1
    instance-of v0, p0, Landroid/widget/EditText;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 39
    check-cast p0, Landroid/widget/EditText;

    .line 40
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 42
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyHorizontalGravity(Landroid/widget/TextView;Z)V

    return-void

    .line 45
    :cond_2
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 46
    check-cast p0, Landroid/widget/TextView;

    .line 47
    invoke-static {p0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->keepLtrText(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 49
    invoke-virtual {p0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 50
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyHorizontalGravity(Landroid/widget/TextView;Z)V

    return-void

    .line 52
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    .line 53
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setTextDirection(I)V

    const/4 v0, 0x5

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setTextAlignment(I)V

    const v0, 0x800003

    .line 55
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyHorizontalGravity(Landroid/widget/TextView;ZI)V

    return-void

    .line 59
    :cond_5
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 60
    check-cast p0, Landroid/view/ViewGroup;

    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 62
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyTextAlignment(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private static keepLtrText(Landroid/widget/TextView;)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    .line 70
    sget v0, Lcom/qianhe/yct/R$id;->tvUnitPreference:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

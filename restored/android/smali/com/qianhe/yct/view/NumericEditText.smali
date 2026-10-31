.class public Lcom/qianhe/yct/view/NumericEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "NumericEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;,
        Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;
    }
.end annotation


# instance fields
.field private clearedZeroOnFocus:Z

.field private fillZeroOnBlur:Z

.field private normalizingText:Z

.field public onFocusListener:Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;

.field private supportDecimals:Z

.field private supportNegative:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetclearedZeroOnFocus(Lcom/qianhe/yct/view/NumericEditText;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/NumericEditText;->clearedZeroOnFocus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfillZeroOnBlur(Lcom/qianhe/yct/view/NumericEditText;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/NumericEditText;->fillZeroOnBlur:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnormalizingText(Lcom/qianhe/yct/view/NumericEditText;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/NumericEditText;->normalizingText:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportNegative(Lcom/qianhe/yct/view/NumericEditText;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputclearedZeroOnFocus(Lcom/qianhe/yct/view/NumericEditText;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->clearedZeroOnFocus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnormalizingText(Lcom/qianhe/yct/view/NumericEditText;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->normalizingText:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smnormalizeNumericText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/view/NumericEditText;->normalizeNumericText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    .line 41
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->normalizingText:Z

    .line 44
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->fillZeroOnBlur:Z

    .line 46
    iput-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->clearedZeroOnFocus:Z

    const/4 p1, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/NumericEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    .line 41
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->normalizingText:Z

    .line 44
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->fillZeroOnBlur:Z

    .line 46
    iput-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->clearedZeroOnFocus:Z

    .line 32
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/NumericEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    .line 41
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    const/4 p3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/qianhe/yct/view/NumericEditText;->normalizingText:Z

    .line 44
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->fillZeroOnBlur:Z

    .line 46
    iput-boolean p3, p0, Lcom/qianhe/yct/view/NumericEditText;->clearedZeroOnFocus:Z

    .line 37
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/NumericEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private forceHorizontalParentLtr()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 115
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Landroid/widget/LinearLayout;

    .line 117
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/qianhe/yct/R$styleable;->NumericEditText:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    :try_start_0
    sget v2, Lcom/qianhe/yct/R$styleable;->NumericEditText_supportNegative:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    .line 54
    sget v2, Lcom/qianhe/yct/R$styleable;->NumericEditText_supportDecimals:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    throw v0

    .line 62
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x2002

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 65
    :goto_1
    iget-boolean v2, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    if-eqz v2, :cond_2

    or-int/lit16 p1, p1, 0x1000

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    const/4 p1, 0x3

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 75
    new-instance p1, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;

    iget-boolean v2, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    iget-boolean v3, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    invoke-direct {p1, p0, v2, v3}, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;-><init>(Lcom/qianhe/yct/view/NumericEditText;ZZ)V

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    invoke-direct {p0}, Lcom/qianhe/yct/view/NumericEditText;->initTextNormalizer()V

    .line 78
    new-instance p1, Lcom/qianhe/yct/view/NumericEditText$1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/NumericEditText$1;-><init>(Lcom/qianhe/yct/view/NumericEditText;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initTextNormalizer()V
    .locals 1

    .line 124
    new-instance v0, Lcom/qianhe/yct/view/NumericEditText$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/NumericEditText$2;-><init>(Lcom/qianhe/yct/view/NumericEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static normalizeNumericText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private updateInputFilter()V
    .locals 3

    .line 318
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2002

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 321
    :goto_0
    iget-boolean v1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    .line 324
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 327
    new-instance v0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;

    iget-boolean v1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    iget-boolean v2, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;-><init>(Lcom/qianhe/yct/view/NumericEditText;ZZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public getNumericValue()D
    .locals 4

    const-wide/16 v0, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/view/NumericEditText;->normalizeNumericText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public isFillZeroOnBlur()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->fillZeroOnBlur:Z

    return v0
.end method

.method public isSupportDecimals()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    return v0
.end method

.method public isSupportNegative()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 110
    invoke-direct {p0}, Lcom/qianhe/yct/view/NumericEditText;->forceHorizontalParentLtr()V

    return-void
.end method

.method public setFillZeroOnBlur(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->fillZeroOnBlur:Z

    return-void
.end method

.method public setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/qianhe/yct/view/NumericEditText;->onFocusListener:Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;

    return-void
.end method

.method public setSupportDecimals(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportDecimals:Z

    .line 309
    invoke-direct {p0}, Lcom/qianhe/yct/view/NumericEditText;->updateInputFilter()V

    return-void
.end method

.method public setSupportNegative(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/qianhe/yct/view/NumericEditText;->supportNegative:Z

    .line 294
    invoke-direct {p0}, Lcom/qianhe/yct/view/NumericEditText;->updateInputFilter()V

    return-void
.end method

.class public final Lcom/qianhe/yct/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static AuthCodeInputView:[I = null

.field public static AuthCodeInputView_currentSplitLineColor:I = 0x0

.field public static AuthCodeInputView_currentTextColor:I = 0x1

.field public static AuthCodeInputView_currentTextSize:I = 0x2

.field public static AuthCodeInputView_defaultColor:I = 0x3

.field public static AuthCodeInputView_defaultSpacing:I = 0x4

.field public static AuthCodeInputView_defaultTextSize:I = 0x5

.field public static AuthCodeInputView_digit:I = 0x6

.field public static AuthCodeInputView_otherSplitLineColor:I = 0x7

.field public static AuthCodeInputView_otherTextColor:I = 0x8

.field public static AuthCodeInputView_otherTextSize:I = 0x9

.field public static AuthCodeInputView_singleCaptchaWidth:I = 0xa

.field public static AuthCodeInputView_splitLineHeight:I = 0xb

.field public static HdImageView:[I = null

.field public static HdImageView_maxDisplayHeight:I = 0x0

.field public static HdImageView_src:I = 0x1

.field public static MarqueeTextView:[I = null

.field public static MarqueeTextView_marqueeEnabled:I = 0x0

.field public static NumericEditText:[I = null

.field public static NumericEditText_supportDecimals:I = 0x0

.field public static NumericEditText_supportNegative:I = 0x1

.field public static PolyLinePreView:[I = null

.field public static PolyLinePreView_drawLines:I = 0x0

.field public static ToothView:[I = null

.field public static ToothView_showPointLib:I = 0x0

.field public static UnitDropdownView:[I = null

.field public static UnitDropdownView_enabled:I = 0x0

.field public static UnitDropdownView_hint:I = 0x1

.field public static UnitDropdownView_unit:I = 0x2

.field public static armView:[I = null

.field public static armView_animationDuration:I = 0x0

.field public static armView_customPivotX:I = 0x1

.field public static armView_customPivotY:I = 0x2

.field public static armView_imageResId:I = 0x3

.field public static armView_initialAngle:I = 0x4

.field public static armView_maxAngle:I = 0x5

.field public static armView_minAngle:I = 0x6

.field public static armView_pivotAtTopCenter:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->AuthCodeInputView:[I

    const v0, 0x7f040339

    const v1, 0x7f040431

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->HdImageView:[I

    const v0, 0x7f040304

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->MarqueeTextView:[I

    const v0, 0x7f040459

    const v1, 0x7f04045a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->NumericEditText:[I

    const v0, 0x7f0401a5

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->PolyLinePreView:[I

    const v0, 0x7f040409

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->ToothView:[I

    const v0, 0x7f040240

    const v1, 0x7f040518

    const v2, 0x7f0401c1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/R$styleable;->UnitDropdownView:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qianhe/yct/R$styleable;->armView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040172
        0x7f040174
        0x7f040175
        0x7f040189
        0x7f04018e
        0x7f040190
        0x7f040198
        0x7f040393
        0x7f040394
        0x7f040395
        0x7f04041d
        0x7f04042a
    .end array-data

    :array_1
    .array-data 4
        0x7f040038
        0x7f040180
        0x7f040181
        0x7f04025a
        0x7f040265
        0x7f040336
        0x7f040345
        0x7f0403b1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

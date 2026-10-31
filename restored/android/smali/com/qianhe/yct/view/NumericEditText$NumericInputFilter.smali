.class Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;
.super Ljava/lang/Object;
.source "NumericEditText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/NumericEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumericInputFilter"
.end annotation


# instance fields
.field private final allowDecimal:Z

.field private final allowNegative:Z

.field final synthetic this$0:Lcom/qianhe/yct/view/NumericEditText;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/view/NumericEditText;ZZ)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean p2, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->allowNegative:Z

    .line 205
    iput-boolean p3, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->allowDecimal:Z

    return-void
.end method

.method private isValidNumericInput(Ljava/lang/String;)Z
    .locals 7

    .line 219
    invoke-static {p1}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$smnormalizeNumericText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->allowNegative:Z

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    return v3

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    move-object p1, v0

    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->allowNegative:Z

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 246
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2e

    if-ge v2, v5, :cond_9

    .line 247
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_6

    .line 250
    iget-boolean v5, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->allowDecimal:Z

    if-nez v5, :cond_5

    return v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 254
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_7

    return v3

    :cond_7
    :goto_2
    if-le v4, v1, :cond_8

    return v3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_9
    const-string v2, "00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "0"

    .line 266
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_a

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_b

    .line 271
    iget-boolean v0, p0, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->allowNegative:Z

    if-eqz v0, :cond_b

    .line 273
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    :cond_b
    return v1

    :cond_c
    :goto_3
    return v3
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    .line 211
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return-object v0

    .line 213
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/NumericEditText$NumericInputFilter;->isValidNumericInput(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object p2
.end method

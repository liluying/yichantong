.class Lcom/qianhe/yct/view/NumericEditText$2;
.super Ljava/lang/Object;
.source "NumericEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/NumericEditText;->initTextNormalizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/NumericEditText;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/NumericEditText;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v0}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fgetnormalizingText(Lcom/qianhe/yct/view/NumericEditText;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v0}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fgetsupportNegative(Lcom/qianhe/yct/view/NumericEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$smnormalizeNumericText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fputnormalizingText(Lcom/qianhe/yct/view/NumericEditText;Z)V

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$2;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fputnormalizingText(Lcom/qianhe/yct/view/NumericEditText;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

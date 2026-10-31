.class Lcom/qianhe/yct/view/NumericEditText$1;
.super Ljava/lang/Object;
.source "NumericEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/NumericEditText;->init(Landroid/util/AttributeSet;)V
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

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 81
    const-string v1, ""

    if-eqz p2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 84
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fputclearedZeroOnFocus(Lcom/qianhe/yct/view/NumericEditText;Z)V

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v1, v0}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fputclearedZeroOnFocus(Lcom/qianhe/yct/view/NumericEditText;Z)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v1}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fgetfillZeroOnBlur(Lcom/qianhe/yct/view/NumericEditText;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v1}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fgetclearedZeroOnFocus(Lcom/qianhe/yct/view/NumericEditText;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_6
    iget-object v1, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v1, v0}, Lcom/qianhe/yct/view/NumericEditText;->-$$Nest$fputclearedZeroOnFocus(Lcom/qianhe/yct/view/NumericEditText;Z)V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/view/NumericEditText$1;->this$0:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v0, v0, Lcom/qianhe/yct/view/NumericEditText;->onFocusListener:Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

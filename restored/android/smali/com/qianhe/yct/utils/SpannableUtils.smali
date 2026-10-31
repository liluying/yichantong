.class public abstract Lcom/qianhe/yct/utils/SpannableUtils;
.super Ljava/lang/Object;
.source "SpannableUtils.java"


# direct methods
.method public static setClickableSpan(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 30
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    .line 39
    new-instance v1, Lcom/qianhe/yct/utils/SpannableUtils$1;

    invoke-direct {v1, p4, p3}, Lcom/qianhe/yct/utils/SpannableUtils$1;-><init>(Landroid/view/View$OnClickListener;I)V

    const/16 p3, 0x21

    .line 55
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {}, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;->getInstance()Lcom/qianhe/yct/utils/PreciseClickMovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

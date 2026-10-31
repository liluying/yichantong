.class Lcom/qianhe/yct/utils/SpannableUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "SpannableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/SpannableUtils;->setClickableSpan(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$color:I

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/qianhe/yct/utils/SpannableUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    iput p2, p0, Lcom/qianhe/yct/utils/SpannableUtils$1;->val$color:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/utils/SpannableUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 50
    iget v0, p0, Lcom/qianhe/yct/utils/SpannableUtils$1;->val$color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method

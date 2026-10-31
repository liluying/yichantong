.class public Lcom/qianhe/yct/view/RollAngleView;
.super Landroid/widget/RelativeLayout;
.source "RollAngleView.java"


# instance fields
.field private ivICon:Landroid/widget/ImageView;

.field private tvAngle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/RollAngleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/RollAngleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/RollAngleView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$layout;->view_roll_angle:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    sget p1, Lcom/qianhe/yct/R$id;->ivICon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/view/RollAngleView;->ivICon:Landroid/widget/ImageView;

    .line 35
    sget p1, Lcom/qianhe/yct/R$id;->tvTooth:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/RollAngleView;->tvAngle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setCurrnetAngle(D)V
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_0

    cmpg-double v4, p1, v0

    if-gez v4, :cond_0

    .line 40
    iget-object v0, p0, Lcom/qianhe/yct/view/RollAngleView;->ivICon:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_roll_h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    cmpg-double v4, p1, v2

    if-gtz v4, :cond_1

    .line 42
    iget-object v0, p0, Lcom/qianhe/yct/view/RollAngleView;->ivICon:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_roll_left:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    cmpl-double v2, p1, v0

    if-ltz v2, :cond_2

    .line 44
    iget-object v0, p0, Lcom/qianhe/yct/view/RollAngleView;->ivICon:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_roll_rigth:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/view/RollAngleView;->tvAngle:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const-string p1, "%.2f\u00b0"

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

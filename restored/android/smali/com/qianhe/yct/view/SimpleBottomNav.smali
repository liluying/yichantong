.class public Lcom/qianhe/yct/view/SimpleBottomNav;
.super Landroid/widget/FrameLayout;
.source "SimpleBottomNav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;
    }
.end annotation


# instance fields
.field private LENGTH:I

.field private currentIndex:I

.field private icons:[Landroid/widget/ImageView;

.field private listener:Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;

.field private roots:[Landroid/view/View;

.field private texts:[Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$r_GrAE3tb-kqQP7huW5T5cB7TL4(Lcom/qianhe/yct/view/SimpleBottomNav;ILandroid/view/View;)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->listener:Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;

    if-eqz p2, :cond_0

    .line 67
    invoke-interface {p2, p1}, Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;->onItemClick(I)V

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/view/SimpleBottomNav;->setSelectedIndex(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/SimpleBottomNav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/SimpleBottomNav;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->currentIndex:I

    .line 41
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/SimpleBottomNav;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$layout;->view_simple_bottom_nav:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p1, 0x2

    .line 46
    iput p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->LENGTH:I

    .line 47
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->roots:[Landroid/view/View;

    .line 48
    new-array v2, p1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->icons:[Landroid/widget/ImageView;

    .line 49
    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->texts:[Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/qianhe/yct/R$id;->home:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 52
    iget-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->roots:[Landroid/view/View;

    sget v0, Lcom/qianhe/yct/R$id;->setup:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p1, v1

    .line 54
    iget-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$id;->ivHomeNav:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p1, v2

    .line 55
    iget-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$id;->ivSettingNav:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p1, v1

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->texts:[Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$id;->tvHomeNav:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p1, v2

    .line 58
    iget-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->texts:[Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$id;->tvSettingNav:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p1, v1

    .line 61
    invoke-virtual {p0, v2}, Lcom/qianhe/yct/view/SimpleBottomNav;->setSelectedIndex(I)V

    .line 64
    :goto_0
    iget p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->LENGTH:I

    if-ge v2, p1, :cond_0

    .line 66
    new-instance p1, Lcom/qianhe/yct/view/SimpleBottomNav$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/qianhe/yct/view/SimpleBottomNav$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/SimpleBottomNav;I)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->roots:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 93
    :goto_0
    iget v4, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->LENGTH:I

    if-ge v3, v4, :cond_2

    .line 94
    iget v4, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->currentIndex:I

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 95
    :goto_1
    iget-object v5, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    if-eqz v4, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v5, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->icons:[Landroid/widget/ImageView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->currentIndex:I

    return v0
.end method

.method public setOnNavItemClickListener(Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->listener:Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 76
    iget v0, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->LENGTH:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iput p1, p0, Lcom/qianhe/yct/view/SimpleBottomNav;->currentIndex:I

    .line 78
    invoke-direct {p0}, Lcom/qianhe/yct/view/SimpleBottomNav;->updateUI()V

    :cond_1
    :goto_0
    return-void
.end method

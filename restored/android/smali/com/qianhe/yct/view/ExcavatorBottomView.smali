.class public Lcom/qianhe/yct/view/ExcavatorBottomView;
.super Landroid/widget/FrameLayout;
.source "ExcavatorBottomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;
    }
.end annotation


# instance fields
.field private LENGTH:I

.field private currentIndex:I

.field private fltChoice:Landroid/view/View;

.field private fltExecute:Landroid/view/View;

.field private flts:[Landroid/widget/FrameLayout;

.field private icons:[Landroid/widget/ImageView;

.field private listener:Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;

.field private texts:[Landroid/widget/TextView;

.field private tvCancel:Landroid/view/View;

.field private tvConfirm:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$5ZwacLW3HGZxFt6ghqzbML9UPKo(Lcom/qianhe/yct/view/ExcavatorBottomView;ILandroid/view/View;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/view/ExcavatorBottomView;->setSelectedIndex(I)V

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->showExecuteUi()V

    .line 87
    iget-object p0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->listener:Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;->onItemClick(I)V

    return-void

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->listener:Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;->onExecuteClick(I)V

    :cond_1
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/view/ExcavatorBottomView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->currentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/view/ExcavatorBottomView;)Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->listener:Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->currentIndex:I

    .line 46
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ExcavatorBottomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$layout;->nav_bottom_excavator:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p1, 0x4

    .line 51
    iput p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->LENGTH:I

    .line 53
    new-array v0, p1, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->flts:[Landroid/widget/FrameLayout;

    .line 54
    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    .line 55
    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/qianhe/yct/R$id;->fltChoice:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->fltChoice:Landroid/view/View;

    .line 58
    sget p1, Lcom/qianhe/yct/R$id;->fltExecute:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->fltExecute:Landroid/view/View;

    .line 59
    sget p1, Lcom/qianhe/yct/R$id;->tvCancel:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->tvCancel:Landroid/view/View;

    .line 60
    sget p1, Lcom/qianhe/yct/R$id;->tvConfirm:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->tvConfirm:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->flts:[Landroid/widget/FrameLayout;

    sget v0, Lcom/qianhe/yct/R$id;->fltCreate:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 63
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->flts:[Landroid/widget/FrameLayout;

    sget v0, Lcom/qianhe/yct/R$id;->fltDel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, p1, v1

    .line 64
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->flts:[Landroid/widget/FrameLayout;

    sget v0, Lcom/qianhe/yct/R$id;->fltDetail:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 65
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->flts:[Landroid/widget/FrameLayout;

    sget v0, Lcom/qianhe/yct/R$id;->fltCalibration:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v4, 0x3

    aput-object v0, p1, v4

    .line 67
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$id;->ivCreate:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p1, v2

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$id;->ivDel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p1, v1

    .line 69
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$id;->ivDetail:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p1, v3

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/qianhe/yct/R$id;->ivCalibration:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p1, v4

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$id;->tvCreate:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p1, v2

    .line 73
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$id;->tvDel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p1, v1

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$id;->tvDetail:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p1, v3

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$id;->tvCalibration:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, p1, v4

    .line 78
    invoke-virtual {p0, v2}, Lcom/qianhe/yct/view/ExcavatorBottomView;->setSelectedIndex(I)V

    .line 81
    :goto_0
    iget p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->LENGTH:I

    if-ge v2, p1, :cond_0

    .line 83
    new-instance p1, Lcom/qianhe/yct/view/ExcavatorBottomView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/qianhe/yct/view/ExcavatorBottomView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/ExcavatorBottomView;I)V

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->tvCancel:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/view/ExcavatorBottomView$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/ExcavatorBottomView$1;-><init>(Lcom/qianhe/yct/view/ExcavatorBottomView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->tvConfirm:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/view/ExcavatorBottomView$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/ExcavatorBottomView$2;-><init>(Lcom/qianhe/yct/view/ExcavatorBottomView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateUI(I)V
    .locals 9

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 147
    :goto_0
    iget v4, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->LENGTH:I

    if-ge v3, v4, :cond_3

    .line 148
    iget v4, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->currentIndex:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 149
    :goto_1
    iget-object v6, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->texts:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    const/4 v7, -0x1

    if-eqz v4, :cond_1

    if-eq p1, v7, :cond_1

    move v8, v0

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v6, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->icons:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    if-eqz v4, :cond_2

    if-eq p1, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->currentIndex:I

    .line 125
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->updateUI(I)V

    return-void
.end method

.method public closeExecuteUi()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->fltChoice:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->fltExecute:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/view/ExcavatorBottomView;->setSelectedIndex(I)V

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->currentIndex:I

    return v0
.end method

.method public setOnNavItemClickListener(Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->listener:Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 130
    iget v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->LENGTH:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iput p1, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->currentIndex:I

    .line 132
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ExcavatorBottomView;->updateUI(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showExecuteUi()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->fltExecute:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/view/ExcavatorBottomView;->fltChoice:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

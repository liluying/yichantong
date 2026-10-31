.class public final Lcom/qianhe/yct/databinding/ActivityZeroingBinding;
.super Ljava/lang/Object;
.source "ActivityZeroingBinding.java"


# instance fields
.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvCancelZero:Landroid/widget/TextView;

.field public final tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvRange:Landroid/widget/TextView;

.field public final tvRangeState:Landroid/widget/TextView;

.field public final tvRangeZero:Landroid/widget/TextView;

.field public final tvStatus:Landroid/widget/TextView;

.field public final tvTiltDisplay:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvZero:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->main:Landroid/widget/LinearLayout;

    .line 60
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 61
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvCancelZero:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRange:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeState:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeZero:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvStatus:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvTiltDisplay:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvZero:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;
    .locals 12

    .line 98
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v3

    .line 107
    sget v0, Lcom/qianhe/yct/R$id;->tvCancelZero:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 113
    sget v0, Lcom/qianhe/yct/R$id;->tvLimit:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 119
    sget v0, Lcom/qianhe/yct/R$id;->tvRange:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 125
    sget v0, Lcom/qianhe/yct/R$id;->tvRangeState:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 131
    sget v0, Lcom/qianhe/yct/R$id;->tvRangeZero:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 137
    sget v0, Lcom/qianhe/yct/R$id;->tvStatus:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 143
    sget v0, Lcom/qianhe/yct/R$id;->tvTiltDisplay:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 149
    sget v0, Lcom/qianhe/yct/R$id;->tvZero:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 155
    new-instance v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v11}, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;
    .locals 2

    .line 85
    sget v0, Lcom/qianhe/yct/R$layout;->activity_zeroing:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

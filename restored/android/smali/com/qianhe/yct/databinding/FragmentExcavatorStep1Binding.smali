.class public final Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;
.super Ljava/lang/Object;
.source "FragmentExcavatorStep1Binding.java"


# instance fields
.field public final edtHA:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtPq:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtValue:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivStep1:Lpl/droidsonroids/gif/GifImageView;

.field public final ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

.field public final lltMode1:Landroid/widget/LinearLayout;

.field public final lltMode23:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvInstallDoubt:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;

.field public final tvUnitValue:Landroid/widget/TextView;

.field public final unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lpl/droidsonroids/gif/GifImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/UnitDropdownView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->rootView:Landroid/widget/LinearLayout;

    .line 81
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    .line 82
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    .line 83
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    .line 84
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    .line 85
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    .line 86
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->lltMode1:Landroid/widget/LinearLayout;

    .line 87
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->lltMode23:Landroid/widget/LinearLayout;

    .line 88
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->main:Landroid/widget/LinearLayout;

    .line 89
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvContinue:Landroid/widget/TextView;

    .line 90
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvInstallDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvPrevious:Landroid/widget/TextView;

    .line 93
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvTips:Landroid/widget/TextView;

    .line 94
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvUnitValue:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;
    .locals 20

    move-object/from16 v0, p0

    .line 125
    sget v1, Lcom/qianhe/yct/R$id;->edtHA:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v5, :cond_0

    .line 131
    sget v1, Lcom/qianhe/yct/R$id;->edtPq:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 137
    sget v1, Lcom/qianhe/yct/R$id;->edtValue:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v7, :cond_0

    .line 143
    sget v1, Lcom/qianhe/yct/R$id;->ivStep1:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lpl/droidsonroids/gif/GifImageView;

    if-eqz v8, :cond_0

    .line 149
    sget v1, Lcom/qianhe/yct/R$id;->ivStep1CloseUp:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    .line 155
    sget v1, Lcom/qianhe/yct/R$id;->lltMode1:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 161
    sget v1, Lcom/qianhe/yct/R$id;->lltMode23:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 167
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 169
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 175
    sget v1, Lcom/qianhe/yct/R$id;->tvDoubt:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    .line 181
    sget v1, Lcom/qianhe/yct/R$id;->tvInstallDoubt:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    .line 187
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 193
    sget v1, Lcom/qianhe/yct/R$id;->tvTips:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 199
    sget v1, Lcom/qianhe/yct/R$id;->tvUnitValue:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 205
    sget v1, Lcom/qianhe/yct/R$id;->unitDropdownSensor:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/qianhe/yct/view/UnitDropdownView;

    if-eqz v19, :cond_0

    .line 211
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-object v12, v4

    invoke-direct/range {v3 .. v19}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lpl/droidsonroids/gif/GifImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/UnitDropdownView;)V

    return-object v3

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;
    .locals 2

    .line 112
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_excavator_step1:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

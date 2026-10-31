.class public final Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;
.super Ljava/lang/Object;
.source "FragmentExcavatorMode4Step4Binding.java"


# instance fields
.field public final edtDx:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivStep:Lpl/droidsonroids/gif/GifImageView;

.field public final main:Landroid/widget/LinearLayout;

.field public final rbPlumbLeft:Landroid/widget/RadioButton;

.field public final rbPlumbRight:Landroid/widget/RadioButton;

.field public final rgPlumbSide:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;

.field public final unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lpl/droidsonroids/gif/GifImageView;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/UnitDropdownView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rootView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    .line 69
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->ivStep:Lpl/droidsonroids/gif/GifImageView;

    .line 70
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->main:Landroid/widget/LinearLayout;

    .line 71
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rbPlumbLeft:Landroid/widget/RadioButton;

    .line 72
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rbPlumbRight:Landroid/widget/RadioButton;

    .line 73
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rgPlumbSide:Landroid/widget/RadioGroup;

    .line 74
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvContinue:Landroid/widget/TextView;

    .line 75
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvPrevious:Landroid/widget/TextView;

    .line 77
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->tvTips:Landroid/widget/TextView;

    .line 78
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;
    .locals 15

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->edtDx:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->ivStep:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lpl/droidsonroids/gif/GifImageView;

    if-eqz v5, :cond_0

    .line 120
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/qianhe/yct/R$id;->rbPlumbLeft:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 128
    sget v0, Lcom/qianhe/yct/R$id;->rbPlumbRight:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_0

    .line 134
    sget v0, Lcom/qianhe/yct/R$id;->rgPlumbSide:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioGroup;

    if-eqz v9, :cond_0

    .line 140
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 146
    sget v0, Lcom/qianhe/yct/R$id;->tvDoubt:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 152
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 158
    sget v0, Lcom/qianhe/yct/R$id;->tvTips:I

    .line 159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 164
    sget v0, Lcom/qianhe/yct/R$id;->unitDropdownSensor:I

    .line 165
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/qianhe/yct/view/UnitDropdownView;

    if-eqz v14, :cond_0

    .line 170
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    move-object v6, v3

    invoke-direct/range {v2 .. v14}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Lpl/droidsonroids/gif/GifImageView;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/UnitDropdownView;)V

    return-object v2

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;
    .locals 2

    .line 95
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_excavator_mode4_step4:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorMode4Step4Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

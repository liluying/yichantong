.class public final Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;
.super Ljava/lang/Object;
.source "FragmentBaseConfigBinding.java"


# instance fields
.field public final edtHeightCutoffAngle:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtHost:Landroidx/appcompat/widget/AppCompatEditText;

.field public final edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtPort:Lcom/qianhe/yct/view/NumericEditText;

.field public final lltContent:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Landroidx/appcompat/widget/AppCompatEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHeightCutoffAngle:Lcom/qianhe/yct/view/NumericEditText;

    .line 47
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    .line 48
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    .line 49
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    .line 50
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    .line 51
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->main:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;
    .locals 10

    .line 81
    sget v0, Lcom/qianhe/yct/R$id;->edtHeightCutoffAngle:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lcom/qianhe/yct/R$id;->edtHost:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v5, :cond_0

    .line 93
    sget v0, Lcom/qianhe/yct/R$id;->edtPDOP:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 99
    sget v0, Lcom/qianhe/yct/R$id;->edtPort:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v7, :cond_0

    .line 105
    sget v0, Lcom/qianhe/yct/R$id;->lltContent:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 111
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 113
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-object v9, v3

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/NumericEditText;Landroidx/appcompat/widget/AppCompatEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;
    .locals 2

    .line 68
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_base_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

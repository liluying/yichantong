.class public final Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;
.super Ljava/lang/Object;
.source "FragmentCreateNameBinding.java"


# instance fields
.field public final edtName:Landroid/widget/EditText;

.field public final flt:Landroid/widget/FrameLayout;

.field public final ivReset:Landroid/widget/ImageView;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvNameDes:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    .line 51
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->flt:Landroid/widget/FrameLayout;

    .line 52
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->ivReset:Landroid/widget/ImageView;

    .line 53
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->main:Landroid/widget/LinearLayout;

    .line 54
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvContinue:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvNameDes:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvPrevious:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;
    .locals 11

    .line 86
    sget v0, Lcom/qianhe/yct/R$id;->edtName:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 92
    sget v0, Lcom/qianhe/yct/R$id;->flt:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 104
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Lcom/qianhe/yct/R$id;->tvNameDes:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    sget v0, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 124
    new-instance v2, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v10}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;
    .locals 2

    .line 73
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_create_name:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

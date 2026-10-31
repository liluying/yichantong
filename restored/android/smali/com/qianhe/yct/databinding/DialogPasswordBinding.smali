.class public final Lcom/qianhe/yct/databinding/DialogPasswordBinding;
.super Ljava/lang/Object;
.source "DialogPasswordBinding.java"


# instance fields
.field public final edtPassword:Landroidx/appcompat/widget/AppCompatEditText;

.field public final error:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvClose:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->edtPassword:Landroidx/appcompat/widget/AppCompatEditText;

    .line 43
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->error:Landroid/widget/TextView;

    .line 44
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->tvClose:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->tvConfirm:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;
    .locals 9

    .line 76
    sget v0, Lcom/qianhe/yct/R$id;->edtPassword:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v4, :cond_0

    .line 82
    sget v0, Lcom/qianhe/yct/R$id;->error:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 88
    sget v0, Lcom/qianhe/yct/R$id;->tvClose:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 94
    sget v0, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->tv_title:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 106
    new-instance v2, Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/databinding/DialogPasswordBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogPasswordBinding;
    .locals 2

    .line 63
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_password:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogPasswordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogPasswordBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.class public final Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;
.super Ljava/lang/Object;
.source "DialogRtkRegisterBinding.java"


# instance fields
.field public final edtCode:Landroid/widget/EditText;

.field public final fltSaoma:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvClose:Landroid/widget/TextView;

.field public final tvError:Landroid/widget/TextView;

.field public final tvRegister:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    .line 44
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->fltSaoma:Landroid/widget/FrameLayout;

    .line 45
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvClose:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvError:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvRegister:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;
    .locals 9

    .line 77
    sget v0, Lcom/qianhe/yct/R$id;->edtCode:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 83
    sget v0, Lcom/qianhe/yct/R$id;->fltSaoma:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 89
    sget v0, Lcom/qianhe/yct/R$id;->tvClose:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 95
    sget v0, Lcom/qianhe/yct/R$id;->tvError:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->tvRegister:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 107
    new-instance v2, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v8}, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;
    .locals 2

    .line 64
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_rtk_register:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

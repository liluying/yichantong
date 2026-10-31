.class public final Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;
.super Ljava/lang/Object;
.source "DialogCorsChangesBinding.java"


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvClose:Landroid/widget/TextView;

.field public final tvNewCors:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvOldCors:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvSure:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 39
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvClose:Landroid/widget/TextView;

    .line 40
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvNewCors:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvOldCors:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->tvSure:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;
    .locals 8

    .line 72
    sget v0, Lcom/qianhe/yct/R$id;->tvClose:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lcom/qianhe/yct/R$id;->tvNewCors:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lcom/qianhe/yct/R$id;->tvOldCors:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lcom/qianhe/yct/R$id;->tvSure:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V

    return-object v2

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;
    .locals 2

    .line 59
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_cors_changes:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogCorsChangesBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

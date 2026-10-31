.class public final Lcom/qianhe/yct/databinding/TitlebarBinding;
.super Ljava/lang/Object;
.source "TitlebarBinding.java"


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final lltBackTb:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvGotoConnect:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/databinding/TitlebarBinding;->rootView:Landroid/widget/FrameLayout;

    .line 39
    iput-object p2, p0, Lcom/qianhe/yct/databinding/TitlebarBinding;->ivBack:Landroid/widget/ImageView;

    .line 40
    iput-object p3, p0, Lcom/qianhe/yct/databinding/TitlebarBinding;->lltBackTb:Landroid/widget/LinearLayout;

    .line 41
    iput-object p4, p0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvGotoConnect:Landroid/widget/TextView;

    .line 42
    iput-object p5, p0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;
    .locals 8

    .line 72
    sget v0, Lcom/qianhe/yct/R$id;->ivBack:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lcom/qianhe/yct/R$id;->lltBackTb:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lcom/qianhe/yct/R$id;->tvGotoConnect:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/databinding/TitlebarBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/databinding/TitlebarBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

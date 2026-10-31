.class public final Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;
.super Ljava/lang/Object;
.source "DialogChooseMultipleProjectBinding.java"


# instance fields
.field public final edtName:Landroid/widget/EditText;

.field public final ivAll:Landroid/widget/ImageView;

.field public final lltAll:Landroid/widget/LinearLayout;

.field public final lltBottom:Landroid/widget/LinearLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field public final root:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvCategory:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rootView:Landroid/widget/LinearLayout;

    .line 61
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->edtName:Landroid/widget/EditText;

    .line 62
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->ivAll:Landroid/widget/ImageView;

    .line 63
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->lltAll:Landroid/widget/LinearLayout;

    .line 64
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->lltBottom:Landroid/widget/LinearLayout;

    .line 65
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->root:Landroid/widget/LinearLayout;

    .line 67
    iput-object p8, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p9, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->tvCancel:Landroid/widget/TextView;

    .line 69
    iput-object p10, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->tvConfirm:Landroid/widget/TextView;

    .line 70
    iput-object p11, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;
    .locals 14

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->edtName:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 106
    sget v0, Lcom/qianhe/yct/R$id;->ivAll:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 112
    sget v0, Lcom/qianhe/yct/R$id;->lltAll:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 118
    sget v0, Lcom/qianhe/yct/R$id;->lltBottom:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 124
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    .line 130
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 132
    sget v0, Lcom/qianhe/yct/R$id;->rvCategory:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    .line 138
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 144
    sget v0, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 150
    sget v0, Lcom/qianhe/yct/R$id;->tv_title:I

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 156
    new-instance v2, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    move-object v9, v3

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;
    .locals 2

    .line 87
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_choose_multiple_project:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

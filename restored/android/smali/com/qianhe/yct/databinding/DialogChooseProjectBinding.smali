.class public final Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;
.super Ljava/lang/Object;
.source "DialogChooseProjectBinding.java"


# instance fields
.field public final edtName:Landroid/widget/EditText;

.field public final ivAll:Landroid/widget/ImageView;

.field public final lltAll:Landroid/widget/LinearLayout;

.field public final lltBottom:Landroid/widget/LinearLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field public final root:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvDike:Landroid/widget/TextView;

.field public final tvLine:Landroid/widget/TextView;

.field public final tvSP:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvWG:Landroid/widget/TextView;

.field public final tvZP:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->rootView:Landroid/widget/LinearLayout;

    .line 74
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->edtName:Landroid/widget/EditText;

    .line 75
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->ivAll:Landroid/widget/ImageView;

    .line 76
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->lltAll:Landroid/widget/LinearLayout;

    .line 77
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->lltBottom:Landroid/widget/LinearLayout;

    .line 78
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->root:Landroid/widget/LinearLayout;

    .line 80
    iput-object p8, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvCancel:Landroid/widget/TextView;

    .line 81
    iput-object p9, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvConfirm:Landroid/widget/TextView;

    .line 82
    iput-object p10, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvDike:Landroid/widget/TextView;

    .line 83
    iput-object p11, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvLine:Landroid/widget/TextView;

    .line 84
    iput-object p12, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvSP:Landroid/widget/TextView;

    .line 85
    iput-object p13, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvTitle:Landroid/widget/TextView;

    .line 86
    iput-object p14, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    .line 87
    iput-object p15, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvZP:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 117
    sget v1, Lcom/qianhe/yct/R$id;->edtName:I

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 123
    sget v1, Lcom/qianhe/yct/R$id;->ivAll:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 129
    sget v1, Lcom/qianhe/yct/R$id;->lltAll:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 135
    sget v1, Lcom/qianhe/yct/R$id;->lltBottom:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 141
    sget v1, Lcom/qianhe/yct/R$id;->rcv:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 147
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 149
    sget v1, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 155
    sget v1, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 161
    sget v1, Lcom/qianhe/yct/R$id;->tvDike:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 167
    sget v1, Lcom/qianhe/yct/R$id;->tvLine:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 173
    sget v1, Lcom/qianhe/yct/R$id;->tvSP:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 179
    sget v1, Lcom/qianhe/yct/R$id;->tv_title:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 185
    sget v1, Lcom/qianhe/yct/R$id;->tvWG:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 191
    sget v1, Lcom/qianhe/yct/R$id;->tvZP:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 197
    new-instance v3, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-object v10, v4

    invoke-direct/range {v3 .. v18}, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;
    .locals 2

    .line 104
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_choose_project:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

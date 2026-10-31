.class public final Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;
.super Ljava/lang/Object;
.source "ActivityShareJoinBinding.java"


# instance fields
.field public final edtCode:Landroid/widget/EditText;

.field public final fltClearCode:Landroid/widget/FrameLayout;

.field public final llt:Landroid/widget/LinearLayout;

.field public final lltBottom:Landroid/widget/LinearLayout;

.field public final lltname:Landroid/widget/RelativeLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvJoin:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->rootView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    .line 55
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->fltClearCode:Landroid/widget/FrameLayout;

    .line 56
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->llt:Landroid/widget/LinearLayout;

    .line 57
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->lltBottom:Landroid/widget/LinearLayout;

    .line 58
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->lltname:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->main:Landroid/widget/LinearLayout;

    .line 60
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 61
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->tvJoin:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;
    .locals 12

    .line 91
    sget v0, Lcom/qianhe/yct/R$id;->edtCode:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/qianhe/yct/R$id;->fltClearCode:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/qianhe/yct/R$id;->llt:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 109
    sget v0, Lcom/qianhe/yct/R$id;->lltBottom:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 115
    sget v0, Lcom/qianhe/yct/R$id;->lltname:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 121
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v10

    .line 130
    sget v0, Lcom/qianhe/yct/R$id;->tvJoin:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 136
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-object v9, v3

    invoke-direct/range {v2 .. v11}, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;)V

    return-object v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;
    .locals 2

    .line 78
    sget v0, Lcom/qianhe/yct/R$layout;->activity_share_join:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

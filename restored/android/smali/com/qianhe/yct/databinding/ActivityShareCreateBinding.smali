.class public final Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;
.super Ljava/lang/Object;
.source "ActivityShareCreateBinding.java"


# instance fields
.field public final edtName:Landroid/widget/EditText;

.field public final fltClearName:Landroid/widget/FrameLayout;

.field public final llt:Landroid/widget/LinearLayout;

.field public final lltBottom:Landroid/widget/LinearLayout;

.field public final lltadd:Landroid/widget/LinearLayout;

.field public final lltname:Landroid/widget/LinearLayout;

.field public final llttime:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/RelativeLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvAdd:Landroid/widget/TextView;

.field public final tvCopy:Landroid/widget/TextView;

.field public final tvExpireTime:Landroid/widget/TextView;

.field public final tvSubmit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 88
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    .line 89
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->fltClearName:Landroid/widget/FrameLayout;

    .line 90
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->llt:Landroid/widget/LinearLayout;

    .line 91
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->lltBottom:Landroid/widget/LinearLayout;

    .line 92
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->lltadd:Landroid/widget/LinearLayout;

    .line 93
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->lltname:Landroid/widget/LinearLayout;

    .line 94
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->llttime:Landroid/widget/LinearLayout;

    .line 95
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->main:Landroid/widget/RelativeLayout;

    .line 96
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 98
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvAdd:Landroid/widget/TextView;

    .line 99
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvCopy:Landroid/widget/TextView;

    .line 100
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    .line 101
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvSubmit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 131
    sget v1, Lcom/qianhe/yct/R$id;->edtName:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 137
    sget v1, Lcom/qianhe/yct/R$id;->fltClearName:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 143
    sget v1, Lcom/qianhe/yct/R$id;->llt:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 146
    sget v1, Lcom/qianhe/yct/R$id;->lltBottom:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 152
    sget v1, Lcom/qianhe/yct/R$id;->lltadd:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 158
    sget v1, Lcom/qianhe/yct/R$id;->lltname:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 164
    sget v1, Lcom/qianhe/yct/R$id;->llttime:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 170
    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 172
    sget v1, Lcom/qianhe/yct/R$id;->rcv:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    .line 178
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v14

    .line 185
    sget v1, Lcom/qianhe/yct/R$id;->tvAdd:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 191
    sget v1, Lcom/qianhe/yct/R$id;->tvCopy:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 197
    sget v1, Lcom/qianhe/yct/R$id;->tvExpireTime:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 203
    sget v1, Lcom/qianhe/yct/R$id;->tvSubmit:I

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 209
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-object v12, v4

    invoke-direct/range {v3 .. v18}, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;
    .locals 2

    .line 118
    sget v0, Lcom/qianhe/yct/R$layout;->activity_share_create:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

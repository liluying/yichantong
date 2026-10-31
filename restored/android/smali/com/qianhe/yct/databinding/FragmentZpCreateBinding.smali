.class public final Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;
.super Ljava/lang/Object;
.source "FragmentZpCreateBinding.java"


# instance fields
.field public final customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

.field public final edtEast:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtElev:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtNorth:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtValue:Lcom/qianhe/yct/view/NumericEditText;

.field public final ivReset:Landroid/widget/ImageView;

.field public final ivType:Landroid/widget/ImageView;

.field public final lltCollect:Landroid/widget/LinearLayout;

.field public final lltValue:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final nsv:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toothView:Lcom/qianhe/yct/view/ToothView;

.field public final tvCadImport:Landroid/widget/TextView;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvType:Landroid/widget/TextView;

.field public final tvTypeDes:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/UnitDropdownView;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 87
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->customDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    .line 88
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    .line 89
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 90
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    .line 91
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    .line 92
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivReset:Landroid/widget/ImageView;

    .line 93
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->ivType:Landroid/widget/ImageView;

    .line 94
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->lltCollect:Landroid/widget/LinearLayout;

    .line 95
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->lltValue:Landroid/widget/LinearLayout;

    .line 96
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->main:Landroid/widget/LinearLayout;

    .line 97
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    .line 98
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->toothView:Lcom/qianhe/yct/view/ToothView;

    .line 99
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvCadImport:Landroid/widget/TextView;

    .line 100
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvContinue:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 101
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvPrevious:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 102
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvType:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 103
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->tvTypeDes:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 133
    sget v1, Lcom/qianhe/yct/R$id;->customDropdown:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qianhe/yct/view/UnitDropdownView;

    if-eqz v5, :cond_0

    .line 139
    sget v1, Lcom/qianhe/yct/R$id;->edtEast:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v6, :cond_0

    .line 145
    sget v1, Lcom/qianhe/yct/R$id;->edtElev:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v7, :cond_0

    .line 151
    sget v1, Lcom/qianhe/yct/R$id;->edtNorth:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v8, :cond_0

    .line 157
    sget v1, Lcom/qianhe/yct/R$id;->edtValue:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v9, :cond_0

    .line 163
    sget v1, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 169
    sget v1, Lcom/qianhe/yct/R$id;->ivType:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 175
    sget v1, Lcom/qianhe/yct/R$id;->lltCollect:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 181
    sget v1, Lcom/qianhe/yct/R$id;->lltValue:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 187
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 189
    sget v1, Lcom/qianhe/yct/R$id;->nsv:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/core/widget/NestedScrollView;

    if-eqz v15, :cond_0

    .line 195
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/qianhe/yct/view/ToothView;

    if-eqz v16, :cond_0

    .line 201
    sget v1, Lcom/qianhe/yct/R$id;->tvCadImport:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 207
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 213
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 219
    sget v1, Lcom/qianhe/yct/R$id;->tvType:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 225
    sget v1, Lcom/qianhe/yct/R$id;->tvTypeDes:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 231
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-object v14, v4

    invoke-direct/range {v3 .. v21}, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;-><init>(Landroid/widget/LinearLayout;Lcom/qianhe/yct/view/UnitDropdownView;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Lcom/qianhe/yct/view/ToothView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 235
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;
    .locals 2

    .line 120
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_zp_create:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

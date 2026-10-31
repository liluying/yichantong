.class public final Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;
.super Ljava/lang/Object;
.source "FragmentExcavatorChoiceModeBinding.java"


# instance fields
.field public final ivDoubtMode1:Landroid/widget/TextView;

.field public final ivDoubtMode3:Landroid/widget/TextView;

.field public final ivDoubtMode4:Landroid/widget/TextView;

.field public final ivMode1:Lcom/qianhe/yct/view/HdImageView;

.field public final ivMode3:Lcom/qianhe/yct/view/HdImageView;

.field public final ivMode4:Lcom/qianhe/yct/view/HdImageView;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContinue:Landroid/widget/TextView;

.field public final tvDoubtSensor:Landroid/widget/TextView;

.field public final tvDoubtSensor4:Landroid/widget/TextView;

.field public final tvModeDes1:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvModeDes3:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvModeDes4:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/HdImageView;Lcom/qianhe/yct/view/HdImageView;Lcom/qianhe/yct/view/HdImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 78
    iput-object p2, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivDoubtMode1:Landroid/widget/TextView;

    .line 79
    iput-object p3, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivDoubtMode3:Landroid/widget/TextView;

    .line 80
    iput-object p4, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivDoubtMode4:Landroid/widget/TextView;

    .line 81
    iput-object p5, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    .line 82
    iput-object p6, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    .line 83
    iput-object p7, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    .line 84
    iput-object p8, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->main:Landroid/widget/LinearLayout;

    .line 85
    iput-object p9, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvContinue:Landroid/widget/TextView;

    .line 86
    iput-object p10, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvDoubtSensor:Landroid/widget/TextView;

    .line 87
    iput-object p11, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvDoubtSensor4:Landroid/widget/TextView;

    .line 88
    iput-object p12, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    iput-object p13, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes3:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    iput-object p14, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes4:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    iput-object p15, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvPrevious:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 92
    iput-object p1, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 122
    sget v1, Lcom/qianhe/yct/R$id;->ivDoubtMode1:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 128
    sget v1, Lcom/qianhe/yct/R$id;->ivDoubtMode3:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 134
    sget v1, Lcom/qianhe/yct/R$id;->ivDoubtMode4:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 140
    sget v1, Lcom/qianhe/yct/R$id;->ivMode1:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/qianhe/yct/view/HdImageView;

    if-eqz v8, :cond_0

    .line 146
    sget v1, Lcom/qianhe/yct/R$id;->ivMode3:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/HdImageView;

    if-eqz v9, :cond_0

    .line 152
    sget v1, Lcom/qianhe/yct/R$id;->ivMode4:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/qianhe/yct/view/HdImageView;

    if-eqz v10, :cond_0

    .line 158
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 160
    sget v1, Lcom/qianhe/yct/R$id;->tvContinue:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 166
    sget v1, Lcom/qianhe/yct/R$id;->tvDoubtSensor:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 172
    sget v1, Lcom/qianhe/yct/R$id;->tvDoubtSensor4:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 178
    sget v1, Lcom/qianhe/yct/R$id;->tvModeDes1:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    .line 184
    sget v1, Lcom/qianhe/yct/R$id;->tvModeDes3:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    .line 190
    sget v1, Lcom/qianhe/yct/R$id;->tvModeDes4:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v17, :cond_0

    .line 196
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 202
    sget v1, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 208
    new-instance v3, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-object v11, v4

    invoke-direct/range {v3 .. v19}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/qianhe/yct/view/HdImageView;Lcom/qianhe/yct/view/HdImageView;Lcom/qianhe/yct/view/HdImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 212
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;
    .locals 2

    .line 109
    sget v0, Lcom/qianhe/yct/R$layout;->fragment_excavator_choice_mode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

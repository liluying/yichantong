.class public final Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;
.super Ljava/lang/Object;
.source "ActivityBucketFineTuneBinding.java"


# instance fields
.field public final cvCollectStep:Landroidx/cardview/widget/CardView;

.field public final cvNameStep:Landroidx/cardview/widget/CardView;

.field public final edtName:Landroidx/appcompat/widget/AppCompatEditText;

.field public final fltName:Landroid/widget/FrameLayout;

.field public final ivReset:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

.field public final lltProgress:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvNameDes:Landroid/widget/TextView;

.field public final tvNext:Landroid/widget/TextView;

.field public final tvPrevious:Landroid/widget/TextView;

.field public final tvStepAction:Landroid/widget/TextView;

.field public final tvStepNumber:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatEditText;Landroid/widget/FrameLayout;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->rootView:Landroid/widget/LinearLayout;

    .line 73
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->cvCollectStep:Landroidx/cardview/widget/CardView;

    .line 74
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->cvNameStep:Landroidx/cardview/widget/CardView;

    .line 75
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    .line 76
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->fltName:Landroid/widget/FrameLayout;

    .line 77
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->ivReset:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 78
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->ivStep:Lcom/qianhe/yct/view/NightAwareImageView;

    .line 79
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->lltProgress:Landroid/widget/LinearLayout;

    .line 80
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 81
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNameDes:Landroid/widget/TextView;

    .line 82
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvNext:Landroid/widget/TextView;

    .line 83
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvPrevious:Landroid/widget/TextView;

    .line 84
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvStepAction:Landroid/widget/TextView;

    .line 85
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->tvStepNumber:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 115
    sget v1, Lcom/qianhe/yct/R$id;->cvCollectStep:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_0

    .line 121
    sget v1, Lcom/qianhe/yct/R$id;->cvNameStep:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    if-eqz v6, :cond_0

    .line 127
    sget v1, Lcom/qianhe/yct/R$id;->edtName:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v7, :cond_0

    .line 133
    sget v1, Lcom/qianhe/yct/R$id;->fltName:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 139
    sget v1, Lcom/qianhe/yct/R$id;->ivReset:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v9, :cond_0

    .line 145
    sget v1, Lcom/qianhe/yct/R$id;->ivStep:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/qianhe/yct/view/NightAwareImageView;

    if-eqz v10, :cond_0

    .line 151
    sget v1, Lcom/qianhe/yct/R$id;->lltProgress:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 157
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v12

    .line 164
    sget v1, Lcom/qianhe/yct/R$id;->tvNameDes:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 170
    sget v1, Lcom/qianhe/yct/R$id;->tvNext:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 176
    sget v1, Lcom/qianhe/yct/R$id;->tvPrevious:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 182
    sget v1, Lcom/qianhe/yct/R$id;->tvStepAction:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 188
    sget v1, Lcom/qianhe/yct/R$id;->tvStepNumber:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 194
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v17}, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatEditText;Landroid/widget/FrameLayout;Lcom/qianhe/yct/view/NightAwareImageView;Lcom/qianhe/yct/view/NightAwareImageView;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;
    .locals 2

    .line 102
    sget v0, Lcom/qianhe/yct/R$layout;->activity_bucket_fine_tune:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityBucketFineTuneBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

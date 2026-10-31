.class public final Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;
.super Ljava/lang/Object;
.source "ActivityCollectCoordsBinding.java"


# instance fields
.field public final bar1:Landroid/view/View;

.field public final bar2:Landroid/view/View;

.field public final bar3:Landroid/view/View;

.field public final bar4:Landroid/view/View;

.field public final bar5:Landroid/view/View;

.field public final ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

.field public final lltAngle:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

.field public final tvArmAngle:Landroid/widget/TextView;

.field public final tvCollect:Landroid/widget/TextView;

.field public final tvH5proTips:Landroid/widget/TextView;

.field public final tvTimer:Landroid/widget/TextView;

.field public final tvToothTips:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 72
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar1:Landroid/view/View;

    .line 73
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar2:Landroid/view/View;

    .line 74
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar3:Landroid/view/View;

    .line 75
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar4:Landroid/view/View;

    .line 76
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bar5:Landroid/view/View;

    .line 77
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->ivAngleStatus:Landroidx/appcompat/widget/AppCompatImageView;

    .line 78
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->lltAngle:Landroid/widget/LinearLayout;

    .line 79
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->main:Landroid/widget/LinearLayout;

    .line 80
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    .line 81
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvArmAngle:Landroid/widget/TextView;

    .line 82
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvCollect:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvH5proTips:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvTimer:Landroid/widget/TextView;

    .line 85
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->tvToothTips:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 115
    sget v1, Lcom/qianhe/yct/R$id;->bar1:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    sget v1, Lcom/qianhe/yct/R$id;->bar2:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 127
    sget v1, Lcom/qianhe/yct/R$id;->bar3:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 133
    sget v1, Lcom/qianhe/yct/R$id;->bar4:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 139
    sget v1, Lcom/qianhe/yct/R$id;->bar5:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 145
    sget v1, Lcom/qianhe/yct/R$id;->ivAngleStatus:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    .line 151
    sget v1, Lcom/qianhe/yct/R$id;->lltAngle:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 157
    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 159
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TopbarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TopbarBinding;

    move-result-object v12

    .line 166
    sget v1, Lcom/qianhe/yct/R$id;->tvArmAngle:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 172
    sget v1, Lcom/qianhe/yct/R$id;->tvCollect:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 178
    sget v1, Lcom/qianhe/yct/R$id;->tvH5proTips:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 184
    sget v1, Lcom/qianhe/yct/R$id;->tvTimer:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 190
    sget v1, Lcom/qianhe/yct/R$id;->tvToothTips:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 196
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    move-object v11, v3

    invoke-direct/range {v2 .. v17}, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TopbarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;
    .locals 2

    .line 102
    sget v0, Lcom/qianhe/yct/R$layout;->activity_collect_coords:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityCollectCoordsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

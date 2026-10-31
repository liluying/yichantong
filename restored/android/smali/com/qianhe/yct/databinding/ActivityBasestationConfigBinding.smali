.class public final Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;
.super Ljava/lang/Object;
.source "ActivityBasestationConfigBinding.java"


# instance fields
.field public final flt:Landroid/widget/FrameLayout;

.field public final ivVPN:Landroid/widget/ImageView;

.field public final main:Landroid/widget/LinearLayout;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final rltDataLink:Landroid/widget/RelativeLayout;

.field public final rltNetwork:Landroid/widget/RelativeLayout;

.field public final rltReset:Landroid/widget/RelativeLayout;

.field public final rltVPN:Landroid/widget/RelativeLayout;

.field public final rltWorkMode:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tv2:Landroid/widget/TextView;

.field public final tv3:Landroid/widget/TextView;

.field public final tv4:Landroid/widget/TextView;

.field public final tv5:Landroid/widget/TextView;

.field public final tvSimStaus:Landroid/widget/TextView;

.field public final tvVpn:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 82
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->flt:Landroid/widget/FrameLayout;

    .line 83
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    .line 84
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->main:Landroid/widget/LinearLayout;

    .line 85
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 86
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltDataLink:Landroid/widget/RelativeLayout;

    .line 87
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltNetwork:Landroid/widget/RelativeLayout;

    .line 88
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltReset:Landroid/widget/RelativeLayout;

    .line 89
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltVPN:Landroid/widget/RelativeLayout;

    .line 90
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rltWorkMode:Landroid/widget/RelativeLayout;

    .line 91
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 92
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tv2:Landroid/widget/TextView;

    .line 93
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tv3:Landroid/widget/TextView;

    .line 94
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tv4:Landroid/widget/TextView;

    .line 95
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tv5:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 96
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvSimStaus:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 97
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->tvVpn:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 127
    sget v1, Lcom/qianhe/yct/R$id;->flt:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lcom/qianhe/yct/R$id;->ivVPN:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 139
    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 141
    sget v1, Lcom/qianhe/yct/R$id;->progressBar:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    .line 147
    sget v1, Lcom/qianhe/yct/R$id;->rltDataLink:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    .line 153
    sget v1, Lcom/qianhe/yct/R$id;->rltNetwork:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 159
    sget v1, Lcom/qianhe/yct/R$id;->rltReset:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 165
    sget v1, Lcom/qianhe/yct/R$id;->rltVPN:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    .line 171
    sget v1, Lcom/qianhe/yct/R$id;->rltWorkMode:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    .line 177
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v14

    .line 184
    sget v1, Lcom/qianhe/yct/R$id;->tv2:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 190
    sget v1, Lcom/qianhe/yct/R$id;->tv3:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 196
    sget v1, Lcom/qianhe/yct/R$id;->tv4:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 202
    sget v1, Lcom/qianhe/yct/R$id;->tv5:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 208
    sget v1, Lcom/qianhe/yct/R$id;->tvSimStaus:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 214
    sget v1, Lcom/qianhe/yct/R$id;->tvVpn:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 220
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-object v7, v4

    invoke-direct/range {v3 .. v20}, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;
    .locals 2

    .line 114
    sget v0, Lcom/qianhe/yct/R$layout;->activity_basestation_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

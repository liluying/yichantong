.class public final Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;
.super Ljava/lang/Object;
.source "ActivityCorsRenewBinding.java"


# instance fields
.field public final lltAfterRenewal:Landroid/widget/LinearLayout;

.field public final lltScanPay:Landroid/widget/LinearLayout;

.field public final main:Landroid/widget/LinearLayout;

.field public final rcv:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvAccountExpire:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvExpireAfterRenewal:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvHostNum:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvPayment:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltAfterRenewal:Landroid/widget/LinearLayout;

    .line 57
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    .line 58
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->main:Landroid/widget/LinearLayout;

    .line 59
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 61
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvAccountExpire:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvExpireAfterRenewal:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvHostNum:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;
    .locals 13

    .line 94
    sget v0, Lcom/qianhe/yct/R$id;->lltAfterRenewal:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->lltScanPay:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 106
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 108
    sget v0, Lcom/qianhe/yct/R$id;->rcv:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    .line 114
    sget v0, Lcom/qianhe/yct/R$id;->topBar:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {v1}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v8

    .line 121
    sget v0, Lcom/qianhe/yct/R$id;->tvAccountExpire:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 127
    sget v0, Lcom/qianhe/yct/R$id;->tvExpireAfterRenewal:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 133
    sget v0, Lcom/qianhe/yct/R$id;->tvHostNum:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 139
    sget v0, Lcom/qianhe/yct/R$id;->tvPayment:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 145
    new-instance v2, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-object v6, v3

    invoke-direct/range {v2 .. v12}, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v2

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;
    .locals 2

    .line 81
    sget v0, Lcom/qianhe/yct/R$layout;->activity_cors_renew:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.class public final Lcom/qianhe/yct/databinding/DialogUpgradeBinding;
.super Ljava/lang/Object;
.source "DialogUpgradeBinding.java"


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvClose:Landroid/widget/ImageView;

.field public final tvFileSize:Landroid/widget/TextView;

.field public final tvIgnore:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;

.field public final tvTest:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;

.field public final tvUpgradeLog:Landroid/widget/TextView;

.field public final tvVersionNew:Landroid/widget/TextView;

.field public final tvVersionOld:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvCancel:Landroid/widget/TextView;

    .line 60
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvClose:Landroid/widget/ImageView;

    .line 61
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvFileSize:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvIgnore:Landroid/widget/TextView;

    .line 63
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvSure:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvTest:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvTip:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvUpgradeLog:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvVersionNew:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvVersionOld:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;
    .locals 14

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 104
    sget v0, Lcom/qianhe/yct/R$id;->tvClose:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 110
    sget v0, Lcom/qianhe/yct/R$id;->tvFileSize:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 116
    sget v0, Lcom/qianhe/yct/R$id;->tvIgnore:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 122
    sget v0, Lcom/qianhe/yct/R$id;->tvSure:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 128
    sget v0, Lcom/qianhe/yct/R$id;->tvTest:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 134
    sget v0, Lcom/qianhe/yct/R$id;->tvTip:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 140
    sget v0, Lcom/qianhe/yct/R$id;->tvUpgradeLog:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 146
    sget v0, Lcom/qianhe/yct/R$id;->tvVersionNew:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 152
    sget v0, Lcom/qianhe/yct/R$id;->tvVersionOld:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 158
    new-instance v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;
    .locals 2

    .line 85
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_upgrade:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

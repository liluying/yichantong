.class public final Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;
.super Ljava/lang/Object;
.source "DialogFineTuneHeightInputBinding.java"


# instance fields
.field public final edtHeight:Lcom/qianhe/yct/view/NumericEditText;

.field public final lltInput:Landroid/widget/LinearLayout;

.field public final lltSource:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvInstrumentCollect:Landroid/widget/TextView;

.field public final tvPointLib:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p2, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->edtHeight:Lcom/qianhe/yct/view/NumericEditText;

    .line 61
    iput-object p3, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->lltInput:Landroid/widget/LinearLayout;

    .line 62
    iput-object p4, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->lltSource:Landroid/widget/LinearLayout;

    .line 63
    iput-object p5, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvCancel:Landroid/widget/TextView;

    .line 64
    iput-object p6, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvConfirm:Landroid/widget/TextView;

    .line 65
    iput-object p7, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvInstrumentCollect:Landroid/widget/TextView;

    .line 66
    iput-object p8, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvPointLib:Landroid/widget/TextView;

    .line 67
    iput-object p9, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvTip:Landroid/widget/TextView;

    .line 68
    iput-object p10, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvTitle:Landroid/widget/TextView;

    .line 69
    iput-object p11, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->tvUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;
    .locals 14

    .line 99
    sget v0, Lcom/qianhe/yct/R$id;->edtHeight:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v4, :cond_0

    .line 105
    sget v0, Lcom/qianhe/yct/R$id;->lltInput:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 111
    sget v0, Lcom/qianhe/yct/R$id;->lltSource:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 117
    sget v0, Lcom/qianhe/yct/R$id;->tvCancel:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 123
    sget v0, Lcom/qianhe/yct/R$id;->tvConfirm:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 129
    sget v0, Lcom/qianhe/yct/R$id;->tvInstrumentCollect:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 135
    sget v0, Lcom/qianhe/yct/R$id;->tvPointLib:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 141
    sget v0, Lcom/qianhe/yct/R$id;->tvTip:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lcom/qianhe/yct/R$id;->tvTitle:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 153
    sget v0, Lcom/qianhe/yct/R$id;->tvUnit:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 159
    new-instance v2, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v13}, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;
    .locals 2

    .line 86
    sget v0, Lcom/qianhe/yct/R$layout;->dialog_fine_tune_height_input:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/databinding/DialogFineTuneHeightInputBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

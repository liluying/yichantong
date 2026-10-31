.class public final Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;
.super Ljava/lang/Object;
.source "ActivityBasestationDatalinkBinding.java"


# instance fields
.field public final edtAPNPsw:Landroid/widget/EditText;

.field public final edtAPNname:Landroid/widget/EditText;

.field public final edtAPNuser:Landroid/widget/EditText;

.field public final edtHost:Landroid/widget/EditText;

.field public final edtMountPoint:Landroid/widget/EditText;

.field public final edtPassword:Landroid/widget/EditText;

.field public final edtPort:Lcom/qianhe/yct/view/NumericEditText;

.field public final edtUserName:Landroid/widget/EditText;

.field public final lltNetworkItem:Landroid/widget/LinearLayout;

.field public final lltNtripItem:Landroid/widget/LinearLayout;

.field public final lltRadioItem:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

.field public final tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvSave:Landroid/widget/TextView;

.field public final tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->rootView:Landroid/widget/LinearLayout;

    .line 89
    iput-object p2, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNPsw:Landroid/widget/EditText;

    .line 90
    iput-object p3, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNname:Landroid/widget/EditText;

    .line 91
    iput-object p4, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtAPNuser:Landroid/widget/EditText;

    .line 92
    iput-object p5, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtHost:Landroid/widget/EditText;

    .line 93
    iput-object p6, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtMountPoint:Landroid/widget/EditText;

    .line 94
    iput-object p7, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPassword:Landroid/widget/EditText;

    .line 95
    iput-object p8, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    .line 96
    iput-object p9, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->edtUserName:Landroid/widget/EditText;

    .line 97
    iput-object p10, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    .line 98
    iput-object p11, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNtripItem:Landroid/widget/LinearLayout;

    .line 99
    iput-object p12, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    .line 100
    iput-object p13, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    .line 101
    iput-object p14, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvChannel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    iput-object p15, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvConnectType:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p16

    .line 103
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p17

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvProtocol:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 p1, p18

    .line 105
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSave:Landroid/widget/TextView;

    move-object/from16 p1, p19

    .line 106
    iput-object p1, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvSendPower:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;
    .locals 23

    move-object/from16 v0, p0

    .line 136
    sget v1, Lcom/qianhe/yct/R$id;->edtAPNPsw:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 142
    sget v1, Lcom/qianhe/yct/R$id;->edtAPNname:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 148
    sget v1, Lcom/qianhe/yct/R$id;->edtAPNuser:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 154
    sget v1, Lcom/qianhe/yct/R$id;->edtHost:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 160
    sget v1, Lcom/qianhe/yct/R$id;->edtMountPoint:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 166
    sget v1, Lcom/qianhe/yct/R$id;->edtPassword:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 172
    sget v1, Lcom/qianhe/yct/R$id;->edtPort:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v11, :cond_0

    .line 178
    sget v1, Lcom/qianhe/yct/R$id;->edtUserName:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    .line 184
    sget v1, Lcom/qianhe/yct/R$id;->lltNetworkItem:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 190
    sget v1, Lcom/qianhe/yct/R$id;->lltNtripItem:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 196
    sget v1, Lcom/qianhe/yct/R$id;->lltRadioItem:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 202
    sget v1, Lcom/qianhe/yct/R$id;->topBar:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {v2}, Lcom/qianhe/yct/databinding/TitlebarBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/TitlebarBinding;

    move-result-object v16

    .line 209
    sget v1, Lcom/qianhe/yct/R$id;->tvChannel:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v17, :cond_0

    .line 215
    sget v1, Lcom/qianhe/yct/R$id;->tvConnectType:I

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    .line 221
    sget v1, Lcom/qianhe/yct/R$id;->tvDataLink:I

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    .line 227
    sget v1, Lcom/qianhe/yct/R$id;->tvProtocol:I

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    .line 233
    sget v1, Lcom/qianhe/yct/R$id;->tvSave:I

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 239
    sget v1, Lcom/qianhe/yct/R$id;->tvSendPower:I

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v22, :cond_0

    .line 245
    new-instance v3, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qianhe/yct/view/NumericEditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/qianhe/yct/databinding/TitlebarBinding;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v3

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;
    .locals 2

    .line 123
    sget v0, Lcom/qianhe/yct/R$layout;->activity_basestation_datalink:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->bind(Landroid/view/View;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

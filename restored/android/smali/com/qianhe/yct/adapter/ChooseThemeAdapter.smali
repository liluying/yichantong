.class public Lcom/qianhe/yct/adapter/ChooseThemeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChooseThemeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentValue:Ljava/lang/String;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/baselib/bean/ThemeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseThemeAdapter;)Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/baselib/bean/ThemeEntity;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->mList:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-static {p1}, Lcom/qianhe/yct/utils/ThemeModeManager;->getSavedMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->currentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ThemeEntity;

    .line 48
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/baselib/bean/ThemeEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;->item:Landroid/view/View;

    iget-object v1, p2, Lcom/qianhe/baselib/bean/ThemeEntity;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->currentValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 50
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ChooseThemeAdapter;Lcom/qianhe/baselib/bean/ThemeEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_theme:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;

    return-void
.end method

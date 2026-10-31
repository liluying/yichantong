.class public Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChooseLanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private currnetCode:Ljava/lang/String;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/baselib/bean/LanguageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;)Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/baselib/bean/LanguageEntity;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->mList:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getSavedLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->currnetCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->mList:Ljava/util/ArrayList;

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

    .line 29
    check-cast p1, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/LanguageEntity;

    .line 52
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/baselib/bean/LanguageEntity;->code:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/qianhe/yct/R$string;->auto:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/qianhe/baselib/bean/LanguageEntity;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;->item:Landroid/view/View;

    iget-object v1, p2, Lcom/qianhe/baselib/bean/LanguageEntity;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->currnetCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 54
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;Lcom/qianhe/baselib/bean/LanguageEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_language:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;

    return-void
.end method

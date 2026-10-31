.class public Lcom/qianhe/yct/adapter/DealerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DealerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/DealerResponse$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/DealerListAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qianhe/yct/event/DealerResponse;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->context:Landroid/content/Context;

    .line 39
    iget-object p1, p2, Lcom/qianhe/yct/event/DealerResponse;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->name:Ljava/lang/String;

    .line 40
    iget-object p1, p2, Lcom/qianhe/yct/event/DealerResponse;->contact_info:Ljava/util/List;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 31
    check-cast p1, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/DealerListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;I)V
    .locals 4
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/yct/event/DealerResponse$ContactInfo;

    .line 54
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;->tvCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DealerListAdapter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/yct/event/DealerResponse$ContactInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%s\uff1a"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;->tvPhone:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/yct/event/DealerResponse$ContactInfo;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p1, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/DealerListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/DealerListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/DealerListAdapter;Lcom/qianhe/yct/event/DealerResponse$ContactInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/DealerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_dealerlist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

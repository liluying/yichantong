.class Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PathAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PathViewHolder"
.end annotation


# instance fields
.field private cbChoose:Landroid/widget/CheckBox;

.field private ivType:Landroid/widget/ImageView;

.field private layoutRoot:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

.field private tvDetail:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;Landroid/view/View;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    .line 191
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    sget p1, Lcom/leon/lfilepickerlibrary/R$id;->iv_type:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->ivType:Landroid/widget/ImageView;

    .line 193
    sget p1, Lcom/leon/lfilepickerlibrary/R$id;->layout_item_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->layoutRoot:Landroid/widget/RelativeLayout;

    .line 194
    sget p1, Lcom/leon/lfilepickerlibrary/R$id;->tv_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->tvName:Landroid/widget/TextView;

    .line 195
    sget p1, Lcom/leon/lfilepickerlibrary/R$id;->tv_detail:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->tvDetail:Landroid/widget/TextView;

    .line 196
    sget p1, Lcom/leon/lfilepickerlibrary/R$id;->cb_choose:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->cbChoose:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->ivType:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->tvDetail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->cbChoose:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->layoutRoot:Landroid/widget/RelativeLayout;

    return-object p0
.end method

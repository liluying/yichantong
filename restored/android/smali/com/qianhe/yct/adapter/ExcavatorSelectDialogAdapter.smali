.class public Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExcavatorSelectDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/SimpleDateFormat;

.field private listener:Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private selectedIndex:I


# direct methods
.method public static synthetic $r8$lambda$SJYCn0Mdg-h0CUTCNqCvENQKDxc(Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;ILcom/qianhe/baselib/bean/ExcavatorEntity;Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->listener:Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0, p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;->onItemClick(ILcom/qianhe/baselib/bean/ExcavatorEntity;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->mData:Ljava/util/List;

    .line 35
    iput p3, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->mData:Ljava/util/List;

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

    .line 24
    check-cast p1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 48
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->tvParams:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 52
    :cond_0
    iget-object v3, p1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->item:Landroid/view/View;

    iget v2, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->selectedIndex:I

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 54
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;ILcom/qianhe/baselib/bean/ExcavatorEntity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;
    .locals 2

    .line 41
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_bucket_select:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->listener:Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;

    return-void
.end method

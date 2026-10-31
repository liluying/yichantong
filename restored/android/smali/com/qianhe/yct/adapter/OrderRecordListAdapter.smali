.class public Lcom/qianhe/yct/adapter/OrderRecordListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OrderRecordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final formatDay:Ljava/text/SimpleDateFormat;

.field private final formatSec:Ljava/text/SimpleDateFormat;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/OrderRecordEntity;",
            ">;"
        }
    .end annotation
.end field

.field private orderNo:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetorderNo(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->orderNo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputorderNo(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->orderNo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/OrderRecordEntity;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->formatSec:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->formatDay:Ljava/text/SimpleDateFormat;

    .line 49
    iput-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private formatTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->context:Landroid/content/Context;

    sget p2, Lcom/qianhe/yct/R$string;->none:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->mData:Ljava/util/List;

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

    .line 41
    check-cast p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;

    .line 64
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvHostNum:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvOrderNumber:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->orderNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget v1, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->unit:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->day:I

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->moon:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->year:I

    .line 67
    :goto_0
    iget-object v3, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvRenewalDration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvValidUntil:Landroid/widget/TextView;

    iget-wide v3, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->createEpochAfter:J

    iget-object v5, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->formatDay:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->formatTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvPaymentTime:Landroid/widget/TextView;

    iget-wide v3, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->createEpoch:J

    iget-object v5, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->formatSec:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v3, v4, v5}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->formatTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvPaymentStatus:Landroid/widget/TextView;

    iget v3, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->payState:I

    if-nez v3, :cond_2

    sget v3, Lcom/qianhe/yct/R$string;->awaiting_payment:I

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    sget v3, Lcom/qianhe/yct/R$string;->payment_successful:I

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    sget v3, Lcom/qianhe/yct/R$string;->payment_failed:I

    goto :goto_1

    :cond_4
    sget v3, Lcom/qianhe/yct/R$string;->order_closed:I

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvCloseOrder:Landroid/widget/TextView;

    iget v3, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->payState:I

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-wide v3, p2, Lcom/qianhe/baselib/bean/OrderRecordEntity;->price:J

    long-to-float v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    float-to-int v3, v1

    int-to-float v4, v3

    .line 73
    const-string v5, "%s"

    cmpl-float v4, v1, v4

    if-nez v4, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_3
    iget-object v1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvPaymentAmount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/qianhe/yct/R$string;->currency_unit:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvHostNum:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p1, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvCloseOrder:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;-><init>(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;Lcom/qianhe/baselib/bean/OrderRecordEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_order_record_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

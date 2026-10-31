.class public Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OrderRecordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/OrderRecordListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field item:Landroid/view/View;

.field tvCloseOrder:Landroid/widget/TextView;

.field tvCopySn:Landroid/widget/TextView;

.field tvHostNum:Landroid/widget/TextView;

.field tvOrderNumber:Landroid/widget/TextView;

.field tvPaymentAmount:Landroid/widget/TextView;

.field tvPaymentStatus:Landroid/widget/TextView;

.field tvPaymentTime:Landroid/widget/TextView;

.field tvRenewalDration:Landroid/widget/TextView;

.field tvValidUntil:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 131
    sget v0, Lcom/qianhe/yct/R$id;->tvHostNum:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvHostNum:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/qianhe/yct/R$id;->tvCopySn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvCopySn:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/qianhe/yct/R$id;->tvOrderNumber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvOrderNumber:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/qianhe/yct/R$id;->tvRenewalDration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvRenewalDration:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/qianhe/yct/R$id;->tvValidUntil:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvValidUntil:Landroid/widget/TextView;

    .line 136
    sget v0, Lcom/qianhe/yct/R$id;->tvPaymentTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvPaymentTime:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/qianhe/yct/R$id;->tvPaymentAmount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvPaymentAmount:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/qianhe/yct/R$id;->tvPaymentStatus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvPaymentStatus:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/qianhe/yct/R$id;->tvCloseOrder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvCloseOrder:Landroid/widget/TextView;

    return-void
.end method

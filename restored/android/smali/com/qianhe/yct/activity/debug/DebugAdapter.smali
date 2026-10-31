.class public Lcom/qianhe/yct/activity/debug/DebugAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DebugAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private filter:Ljava/lang/String;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingInsertStart:I

.field private pressing:Z


# direct methods
.method public static synthetic $r8$lambda$gH0iRckn1ITyhXUzldRBmbdVLOI(Lcom/qianhe/yct/activity/debug/DebugAdapter;Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    .line 76
    iget-object p2, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-eqz p2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "debug"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 80
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->context:Landroid/content/Context;

    sget p1, Lcom/qianhe/yct/R$string;->copy_to_clipboard:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic $r8$lambda$tcVIHB2PcOatQJrkP8KSEW3B38U(Lcom/qianhe/yct/activity/debug/DebugAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return p2

    .line 66
    :cond_0
    iput-boolean p2, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pressing:Z

    .line 67
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->flushPendingInserts()V

    return p2

    .line 62
    :cond_1
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pressing:Z

    return p2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private flushPendingInserts()V
    .locals 3

    .line 87
    iget v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pressing:Z

    if-eqz p1, :cond_1

    .line 101
    iget p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pendingInsertStart:I

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pressing:Z

    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPressing()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->pressing:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->onBindViewHolder(Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;->tvDebugMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p1, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;->tvDebugMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->filter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->filter:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 59
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/debug/DebugAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/debug/DebugAdapter;Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_admin_debug:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter;->filter:Ljava/lang/String;

    return-void
.end method

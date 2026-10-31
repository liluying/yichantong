.class Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LogviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/LogviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$brD9S6YLrqBFbbtzWgo2bpb29pI(Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 216
    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-nez p2, :cond_2

    goto :goto_0

    .line 218
    :cond_2
    const-string v0, "log"

    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 219
    sget p0, Lcom/qianhe/yct/R$string;->copy_to_clipboard:I

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 197
    check-cast p1, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->onBindViewHolder(Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;I)V
    .locals 1

    .line 227
    iget-object p1, p1, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;->tvLog:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;
    .locals 2

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_log:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 209
    new-instance p2, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    .line 210
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

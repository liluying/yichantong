.class public Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConverParamsControlPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;,
        Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;,
        Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;,
        Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;,
        Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private callback:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

.field private inputFocusListener:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

.field private minPointCount:I

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;"
        }
    .end annotation
.end field

.field private sevenParamMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->callback:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->inputFocusListener:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetminPointCount(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->minPointCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpoints(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->points:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsevenParamMode(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->sevenParamMode:Z

    return p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->minPointCount:I

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMinPointCount()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->minPointCount:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 107
    instance-of v0, p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->points:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-virtual {p1, v0, p2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->bind(Lcom/qianhe/yct/bean/ConverParamsControlPointInput;I)V

    return-void

    .line 109
    :cond_0
    instance-of p2, p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;

    if-eqz p2, :cond_1

    .line 110
    check-cast p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;->bind()V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_conver_params_add_footer:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;Landroid/view/View;)V

    return-object p2

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_conver_params_control_point:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 117
    instance-of v0, p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->clearEditorFocus()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->callback:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    return-void
.end method

.method public setOnInputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->inputFocusListener:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

    return-void
.end method

.method public setSevenParamMode(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->sevenParamMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 59
    :goto_0
    iput p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->minPointCount:I

    .line 60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public syncVisiblePointsFromViews(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 80
    instance-of v2, v1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    if-eqz v2, :cond_1

    .line 81
    check-cast v1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->syncToPoint()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

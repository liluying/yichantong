.class public Lcom/qianhe/yct/view/GridSpaceItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpaceItemDecorator.java"


# instance fields
.field private final space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/qianhe/yct/view/GridSpaceItemDecorator;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 19
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 20
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 22
    rem-int p3, p2, p4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 24
    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 26
    :cond_0
    iget p3, p0, Lcom/qianhe/yct/view/GridSpaceItemDecorator;->space:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 29
    rem-int/2addr p2, p4

    if-nez p2, :cond_1

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 33
    :cond_1
    iget p2, p0, Lcom/qianhe/yct/view/GridSpaceItemDecorator;->space:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

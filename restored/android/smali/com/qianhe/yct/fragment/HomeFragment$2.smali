.class Lcom/qianhe/yct/fragment/HomeFragment$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/HomeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/HomeFragment;II)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$2;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 398
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 399
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 400
    iget-object p3, p0, Lcom/qianhe/yct/fragment/HomeFragment$2;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p3}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgethomeAdapter(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/yct/adapter/HomeAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/qianhe/yct/adapter/HomeAdapter;->onItemMove(II)V

    .line 401
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$2;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$msaveSort(Lcom/qianhe/yct/fragment/HomeFragment;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    return-void
.end method

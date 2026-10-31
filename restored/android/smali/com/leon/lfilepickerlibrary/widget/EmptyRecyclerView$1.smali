.class Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "EmptyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;


# direct methods
.method constructor <init>(Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;->this$0:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 59
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;->this$0:Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->access$000(Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;)V

    return-void
.end method

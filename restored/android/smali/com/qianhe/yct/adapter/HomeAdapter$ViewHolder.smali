.class public Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/HomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field binding:Lcom/qianhe/yct/databinding/ItemHomeBinding;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/databinding/ItemHomeBinding;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ItemHomeBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    iput-object p1, p0, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;->binding:Lcom/qianhe/yct/databinding/ItemHomeBinding;

    return-void
.end method

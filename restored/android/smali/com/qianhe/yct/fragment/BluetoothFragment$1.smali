.class Lcom/qianhe/yct/fragment/BluetoothFragment$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "BluetoothFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BluetoothFragment;->nonScrollingLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BluetoothFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BluetoothFragment;Landroid/content/Context;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BluetoothFragment$1;->this$0:Lcom/qianhe/yct/fragment/BluetoothFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

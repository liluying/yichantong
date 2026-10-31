.class Lcom/qianhe/yct/MainActivity$3;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/MainActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/MainActivity;

.field final synthetic val$fragments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/MainActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$3;->this$0:Lcom/qianhe/yct/MainActivity;

    iput-object p3, p0, Lcom/qianhe/yct/MainActivity$3;->val$fragments:Ljava/util/List;

    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$3;->val$fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$3;->val$fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

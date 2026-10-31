.class Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ExcavatorCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExcavatorCreatePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    .line 809
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity$ExcavatorCreatePagerAdapter;->this$0:Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->-$$Nest$mcreatePageFragment(Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 820
    invoke-static {}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->-$$Nest$sfgetPAGE_TYPES()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

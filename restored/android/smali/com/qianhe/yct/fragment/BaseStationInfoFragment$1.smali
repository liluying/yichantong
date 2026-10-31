.class Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;
.super Ljava/lang/Object;
.source "BaseStationInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;-><init>(Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

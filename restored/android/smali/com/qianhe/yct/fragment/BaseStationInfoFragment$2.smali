.class Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;
.super Ljava/lang/Object;
.source "BaseStationInfoFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->-$$Nest$fputmINS(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;Lcom/qianhe/baselib/bean/InsNavi;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$2;->onChanged(Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

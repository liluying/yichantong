.class public final synthetic Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/PointCreateFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda6;->f$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$$ExternalSyntheticLambda6;->f$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    check-cast p1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->$r8$lambda$L4Qtwv6jUB1PqxVTFjzyXDpNjNo(Lcom/qianhe/yct/fragment/PointCreateFragment;Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity$CollectGnssQuality;)V

    return-void
.end method

.class public final synthetic Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/fragment/LocationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/fragment/LocationFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/fragment/LocationFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LocationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/fragment/LocationFragment;

    check-cast p1, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/LocationFragment;->$r8$lambda$btu3tBwzEDbhYGK5c5B_nxdlhVo(Lcom/qianhe/yct/fragment/LocationFragment;Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

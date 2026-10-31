.class Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;
.super Ljava/lang/Object;
.source "CurvedSlopeStep3Fragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initObserve()V
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
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 357
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;->onChanged([D)V

    return-void
.end method

.method public onChanged([D)V
    .locals 2

    if-eqz p1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$maddPoint(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;[DZ)V

    :cond_1
    :goto_0
    return-void
.end method

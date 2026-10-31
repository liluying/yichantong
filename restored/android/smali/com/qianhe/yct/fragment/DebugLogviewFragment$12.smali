.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initLiveData()V
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
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/InsAhrs;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsAhrs;->rollDegreesError:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputahrsRollError(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsAhrs;->pitchDegreesError:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputahrsPitchError(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegreesError:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputahrsHeadingError(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V

    .line 328
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mrefreshInsAngleViews(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 321
    check-cast p1, Lcom/qianhe/baselib/bean/InsAhrs;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$12;->onChanged(Lcom/qianhe/baselib/bean/InsAhrs;)V

    return-void
.end method

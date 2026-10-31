.class Lcom/qianhe/yct/base/BaseActivity$23;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->showBubbleCompassCollectDialog(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$listener:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2731
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$23;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$23;->val$listener:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 2746
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$23;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mdisableInstrumentDopLog(Lcom/qianhe/yct/base/BaseActivity;)V

    .line 2747
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$23;->val$listener:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public onCollect()V
    .locals 2

    .line 2734
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$23;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mbuildInstrumentCollectResultFromCurrentGga(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object v0

    .line 2735
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$23;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mdisableInstrumentDopLog(Lcom/qianhe/yct/base/BaseActivity;)V

    if-eqz v0, :cond_1

    .line 2736
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    if-nez v1, :cond_0

    goto :goto_0

    .line 2741
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$23;->val$listener:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;

    invoke-interface {v1, v0}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void

    .line 2737
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$23;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->getting_location:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 2738
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$23;->val$listener:Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

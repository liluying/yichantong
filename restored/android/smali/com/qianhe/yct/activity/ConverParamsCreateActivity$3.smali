.class Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;
.super Ljava/lang/Object;
.source "ConverParamsCreateActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->promptEnableAfterCreate(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

.field final synthetic val$saved:Lcom/qianhe/baselib/bean/GnssTransParamEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1517
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;->val$saved:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 2

    .line 1525
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->saved_successfully:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1526
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 1520
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;->val$saved:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$menableConversionParam(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void
.end method

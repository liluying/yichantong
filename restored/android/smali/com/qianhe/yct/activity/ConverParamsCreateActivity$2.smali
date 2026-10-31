.class Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;
.super Ljava/lang/Object;
.source "ConverParamsCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 423
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetsuppressParamTypeSpinnerCallback(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    const/4 p3, 0x2

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 425
    :goto_0
    iget-object p4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p4}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetentity(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p4

    iget p4, p4, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-eq p4, p3, :cond_2

    .line 426
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p1, p3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$monParamTypeChanged(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V

    return-void

    .line 428
    :cond_2
    iget-object p4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p4}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    move-result-object p4

    if-ne p3, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p4, p2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setSevenParamMode(Z)V

    .line 429
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$mupdateManualParamTypeVisibility(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.class Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;
.super Ljava/lang/Object;
.source "ExcavatorStep4Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    .line 121
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetcontinueProcessing(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ne v1, v2, :cond_6

    .line 125
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    cmpl-double v8, v1, v5

    if-nez v8, :cond_1

    .line 126
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 127
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$000(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v2

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$100(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;ID)D

    move-result-wide v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v1, v5

    if-ltz v8, :cond_5

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$200(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v2

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$300(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;ID)D

    move-result-wide v1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v1

    if-nez v1, :cond_3

    .line 130
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 133
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 136
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$mprepareMode1CalibValuesInMeters(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V

    .line 137
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    const-string/jumbo v2, "\u6a21\u5f0f1"

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$mstartLocalCalibration(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 140
    :cond_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 141
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$400(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v8

    iget-object v9, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v9}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v9

    iget-object v9, v9, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtAx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    const/4 v11, 0x3

    invoke-static {v2, v8, v9, v10, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$500(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D

    move-result-wide v8

    if-eqz v1, :cond_7

    move-wide v12, v5

    goto :goto_1

    .line 142
    :cond_7
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$600(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v10

    iget-object v12, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v12}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v12

    iget-object v12, v12, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v12}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v12

    invoke-static {v2, v10, v12, v13, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$700(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D

    move-result-wide v12

    .line 143
    :goto_1
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$800(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v10

    iget-object v14, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v14}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v14

    iget-object v14, v14, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v14}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v14

    invoke-static {v2, v10, v14, v15, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$900(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D

    move-result-wide v14

    .line 144
    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1000(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v10

    move-wide/from16 v16, v3

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtBD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-static {v2, v10, v3, v4, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1100(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D

    move-result-wide v2

    .line 145
    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1200(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v10

    move-wide/from16 v18, v5

    iget-object v5, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    invoke-static {v4, v10, v5, v6, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1300(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D

    move-result-wide v4

    .line 146
    iget-object v6, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v6}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1400(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I

    move-result v10

    iget-object v7, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v7}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object v7

    iget-object v7, v7, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v20, v4

    invoke-virtual {v7}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-static {v6, v10, v4, v5, v11}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->access$1500(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D

    move-result-wide v4

    cmpl-double v6, v8, v18

    if-eqz v6, :cond_1b

    if-nez v1, :cond_8

    cmpl-double v6, v12, v18

    if-eqz v6, :cond_1b

    :cond_8
    cmpl-double v6, v14, v18

    if-eqz v6, :cond_1b

    cmpl-double v6, v2, v18

    if-eqz v6, :cond_1b

    cmpl-double v6, v20, v18

    if-eqz v6, :cond_1b

    cmpl-double v6, v4, v18

    if-nez v6, :cond_9

    goto/16 :goto_8

    .line 149
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v22, v6, v10

    if-ltz v22, :cond_1a

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v22, v6, v16

    if-lez v22, :cond_a

    goto/16 :goto_7

    :cond_a
    if-nez v1, :cond_c

    .line 151
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v10

    if-ltz v1, :cond_b

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v16

    if-lez v1, :cond_c

    .line 152
    :cond_b
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 153
    :cond_c
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v10

    if-ltz v1, :cond_19

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v16

    if-lez v1, :cond_d

    goto/16 :goto_6

    .line 155
    :cond_d
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v10

    if-ltz v1, :cond_18

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v16

    if-lez v1, :cond_e

    goto/16 :goto_5

    .line 157
    :cond_e
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v10

    if-ltz v1, :cond_17

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v16

    if-lez v1, :cond_f

    goto/16 :goto_4

    .line 159
    :cond_f
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v10

    if-ltz v1, :cond_16

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v16

    if-lez v1, :cond_10

    goto/16 :goto_3

    .line 161
    :cond_10
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v1

    if-nez v1, :cond_11

    .line 162
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_11
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v6, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v6}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v7

    if-ne v1, v7, :cond_12

    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v7, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v7}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v7

    and-int/2addr v1, v7

    if-eqz v1, :cond_12

    .line 164
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 165
    :cond_12
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v6}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v6

    if-ne v1, v6, :cond_13

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    if-nez v1, :cond_13

    .line 166
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 167
    :cond_13
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v6, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v6

    if-eq v1, v6, :cond_14

    .line 168
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 170
    :cond_14
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iput-wide v8, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 171
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iput-wide v12, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 172
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iput-wide v14, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 173
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 174
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    move-wide/from16 v2, v20

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 175
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 176
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iget-object v4, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v4

    iget v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    const-wide v5, 0x3f9999999999999aL    # 0.025

    goto :goto_2

    :cond_15
    move-wide/from16 v5, v18

    :goto_2
    add-double/2addr v2, v5

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 177
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6a21\u5f0f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v3

    iget v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$mstartLocalCalibration(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_16
    :goto_3
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 158
    :cond_17
    :goto_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 156
    :cond_18
    :goto_5
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 154
    :cond_19
    :goto_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 150
    :cond_1a
    :goto_7
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->param_too_large_or_small:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 148
    :cond_1b
    :goto_8
    iget-object v1, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v2, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->config_empty:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.class Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;
.super Ljava/lang/Object;
.source "CurvedSlopeStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    .line 198
    iget-object v1, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 199
    iget-object v1, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 200
    iget-object v1, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    .line 201
    iget-object v1, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east1:D

    iget-object v9, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v9}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v9

    iget-wide v9, v9, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north1:D

    iget-object v11, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v11}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v11

    iget-wide v11, v11, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev1:D

    const/4 v13, 0x3

    new-array v14, v13, [D

    const/4 v15, 0x0

    aput-wide v1, v14, v15

    const/4 v1, 0x1

    aput-wide v9, v14, v1

    const/4 v2, 0x2

    aput-wide v11, v14, v2

    iget-object v9, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v9}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object v9

    iget-object v9, v9, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iget-object v11, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v11}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object v11

    iget-object v11, v11, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v11}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v11

    const/16 p1, 0x1

    iget-object v1, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v16

    new-array v1, v13, [D

    aput-wide v9, v1, v15

    aput-wide v11, v1, p1

    aput-wide v16, v1, v2

    invoke-static {v14, v1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v9

    const/4 v1, 0x0

    const-wide/16 v11, 0x0

    cmpl-double v2, v3, v11

    if-nez v2, :cond_0

    cmpl-double v2, v5, v11

    if-nez v2, :cond_0

    cmpl-double v2, v7, v11

    if-nez v2, :cond_0

    .line 203
    iget-object v2, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v3, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 204
    :cond_0
    iget-object v2, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;DDD)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    iget-object v2, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v3, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_1
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v9, v2

    if-gez v4, :cond_2

    .line 207
    iget-object v2, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v3, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    sget v4, Lcom/qianhe/yct/R$string;->ac_cannot_coincide:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    sget v5, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 209
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

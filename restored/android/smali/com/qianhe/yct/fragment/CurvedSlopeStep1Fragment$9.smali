.class Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;
.super Ljava/lang/Object;
.source "CurvedSlopeStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    const/4 p1, 0x0

    const-wide/16 v7, 0x0

    cmpl-double v0, v1, v7

    if-nez v0, :cond_0

    cmpl-double v0, v3, v7

    if-nez v0, :cond_0

    cmpl-double v0, v5, v7

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;DDD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 213
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

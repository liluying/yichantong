.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 562
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llGaussParams:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    const/16 p4, 0x8

    const/4 p5, 0x2

    if-eqz p3, :cond_1

    if-ne p3, p5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llUtmParams:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-ne p3, v0, :cond_4

    .line 566
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 567
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetmEntity(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    iget-wide p4, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v0, 0x1

    cmp-long p2, p4, v0

    if-ltz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 568
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$mfillUtmParamsFromLocation(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    if-ne p3, p5, :cond_6

    .line 570
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetlastProjectionPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 572
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$mfillCentralMeridianPreferLocation(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    .line 574
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fputlastProjectionPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;I)V

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

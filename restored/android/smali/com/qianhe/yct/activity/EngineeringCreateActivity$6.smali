.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initConversionParamsSpinner()V
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

    .line 799
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

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

    .line 802
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetconversionSpinnerUserReady(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 803
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fputlastConversionSpinnerPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;I)V

    .line 804
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1, p3, p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$mapplyConversionTypeSelection(Lcom/qianhe/yct/activity/EngineeringCreateActivity;IZ)V

    return-void

    .line 807
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetlastConversionSpinnerPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)I

    move-result p1

    if-ne p3, p1, :cond_1

    return-void

    .line 808
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {p1, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fputlastConversionSpinnerPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;I)V

    .line 809
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    if-lez p3, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p1, p3, p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$mapplyConversionTypeSelection(Lcom/qianhe/yct/activity/EngineeringCreateActivity;IZ)V

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

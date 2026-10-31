.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity;->showEllipsoidPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

.field final synthetic val$adapter:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$selectedIndex:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$adapter:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iput p4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$selectedIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 682
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$adapter:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iget v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;->val$selectedIndex:I

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$mscrollEllipsoidListToSelected(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V

    return-void
.end method

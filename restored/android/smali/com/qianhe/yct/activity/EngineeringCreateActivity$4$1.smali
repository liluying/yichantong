.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;->this$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;

    iput-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 3

    .line 639
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;->this$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;

    iget-object v0, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    iget-object v1, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$listView:Landroid/widget/ListView;

    iget-object v2, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$adapter:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iget p1, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$selectedIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$mscrollEllipsoidListToSelected(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V

    return-void

    .line 642
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;->this$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;

    iget-object p1, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;Landroid/widget/ListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$adapter:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iput-object p3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$listView:Landroid/widget/ListView;

    iput p4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$selectedIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 635
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;->val$adapter:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    invoke-virtual {p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;

    invoke-direct {p3, p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4$1;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1, p3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

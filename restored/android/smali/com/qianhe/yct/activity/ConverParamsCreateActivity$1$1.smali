.class Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;
.super Ljava/lang/Object;
.source "ConverParamsCreateActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->onDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iput p2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 304
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->val$position:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iget-object v1, v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iget-object v1, v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->getMinPointCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->-$$Nest$mclearCalculatedResult(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    :cond_2
    :goto_0
    return-void
.end method

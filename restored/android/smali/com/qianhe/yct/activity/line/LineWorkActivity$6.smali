.class Lcom/qianhe/yct/activity/line/LineWorkActivity$6;
.super Ljava/lang/Object;
.source "LineWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 244
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 245
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    return-void

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/line/LineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityLineWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    return-void
.end method

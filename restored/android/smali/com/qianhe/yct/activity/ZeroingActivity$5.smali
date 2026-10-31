.class Lcom/qianhe/yct/activity/ZeroingActivity$5;
.super Ljava/lang/Object;
.source "ZeroingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ZeroingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ZeroingActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fputcancelZero(Lcom/qianhe/yct/activity/ZeroingActivity;Z)V

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fputrangeInitialIndex(Lcom/qianhe/yct/activity/ZeroingActivity;I)V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetrangeInitialIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$mgetLimitValue(Lcom/qianhe/yct/activity/ZeroingActivity;I)F

    move-result v4

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetrangeInitialIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fputrangeCurrentIndex(Lcom/qianhe/yct/activity/ZeroingActivity;I)V

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ZeroingActivity;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetlist(Lcom/qianhe/yct/activity/ZeroingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetrangeInitialIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$5;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$mzeroing(Lcom/qianhe/yct/activity/ZeroingActivity;DFD)V

    return-void
.end method

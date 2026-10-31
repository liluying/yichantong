.class Lcom/qianhe/yct/activity/ModifyInfoActivity$1;
.super Ljava/lang/Object;
.source "ModifyInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ModifyInfoActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPhone:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltSend:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPassword:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltPhone:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ModifyInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ModifyInfoActivity;)Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityModifyInfoBinding;->lltSend:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

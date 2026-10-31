.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 464
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 467
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 468
    iget-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 469
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mshowChooseCorsDialog(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    return-void

    .line 471
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 473
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyXFixedDiffSource(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    return-void

    .line 474
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 475
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$14;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyRadioDiffSource(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    :cond_2
    return-void
.end method

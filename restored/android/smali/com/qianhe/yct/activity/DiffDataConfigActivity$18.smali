.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$18;
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

    .line 511
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$18;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 514
    const-string v0, "appliedtobaseradio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 516
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$18;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyRadioConfigToBase(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    return-void

    .line 518
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$18;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

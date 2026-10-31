.class Lcom/qianhe/yct/fragment/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/HomeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/HomeFragment;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 297
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 298
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v2, Lcom/qianhe/yct/R$string;->base_station_code_expired:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v2, Lcom/qianhe/yct/R$string;->base_station_area_code_restriction:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$fgetbaseStaus(Lcom/qianhe/yct/fragment/HomeFragment;)Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;->status:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v1, Lcom/qianhe/yct/R$string;->base_station_coordinates_error:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v2, Lcom/qianhe/yct/R$string;->base_station_config:I

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/qianhe/yct/fragment/HomeFragment$1$1;

    invoke-direct {v5, p0}, Lcom/qianhe/yct/fragment/HomeFragment$1$1;-><init>(Lcom/qianhe/yct/fragment/HomeFragment$1;)V

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$mgotoBaseStationConfigActivity(Lcom/qianhe/yct/fragment/HomeFragment;)V

    return-void

    .line 318
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/HomeFragment$1;->this$0:Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/HomeFragment;->-$$Nest$mgotoBaseStationConfigActivity(Lcom/qianhe/yct/fragment/HomeFragment;)V

    return-void
.end method

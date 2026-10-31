.class public Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "FixedCoordinateStartupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;
    }
.end annotation


# instance fields
.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private baseDisconnected:Z

.field private baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

.field private baseStartCount:J

.field private binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

.field private checkTooFar:Z

.field private elev:Ljava/lang/String;

.field private entity:Lcom/qianhe/baselib/base/BaseProEntity;

.field private gpdop:Lcom/qianhe/baselib/bean/GPDOPEntity;

.field private initBaseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

.field private lat:Ljava/lang/String;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

.field private lon:Ljava/lang/String;

.field private mGGABase:Lcom/qianhe/baselib/bean/GGAEntity;

.field private newInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

.field private resetBase:Z

.field private setBaseOk:Z

.field private setMode:Z

.field private success:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->initBaseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsuccess(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->success:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputresetBase(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->resetBase:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    invoke-direct {v0}, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    .line 57
    const-string v0, "0"

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->lon:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->lat:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->elev:Ljava/lang/String;

    return-void
.end method

.method private showBaseDisconnectedTip()V
    .locals 4

    .line 160
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseDisconnected:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseDisconnected:Z

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setBaseOk:Z

    .line 163
    sget v0, Lcom/qianhe/yct/R$string;->base_disconnected_please_reconnect:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$3;-><init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V

    const-string v3, ""

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSolutionStatus(I)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->unknown_solution:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 286
    :pswitch_0
    sget p1, Lcom/qianhe/yct/R$string;->sbas_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 283
    :pswitch_1
    sget p1, Lcom/qianhe/yct/R$string;->UWL:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 280
    :pswitch_2
    sget p1, Lcom/qianhe/yct/R$string;->base_fixed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 277
    :pswitch_3
    sget p1, Lcom/qianhe/yct/R$string;->calcul_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 274
    :pswitch_4
    sget p1, Lcom/qianhe/yct/R$string;->float_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 271
    :pswitch_5
    sget p1, Lcom/qianhe/yct/R$string;->fixed_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 268
    :pswitch_6
    sget p1, Lcom/qianhe/yct/R$string;->diff_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 265
    :pswitch_7
    sget p1, Lcom/qianhe/yct/R$string;->singlepoint_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 262
    :pswitch_8
    sget p1, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvSolutionStatus:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->solution_state:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    .line 84
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 91
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "baseProEntity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    iput-object v2, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 96
    const-string v2, "newInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->newInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvTip:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvPdop:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :cond_2
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$1;-><init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$2;-><init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->newInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->antennaOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->newInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-object v3, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->antennaOrder:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "SET,ANTENNA_HEIGHT,PHASE,0"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,BASE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v3, "LOG,GGA,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 396
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 398
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "SET,MODE,BASE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 387
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->success:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;->onClose(I)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BestPosEntity;)V
    .locals 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 296
    iget-object v4, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v4, v5, :cond_1

    .line 297
    iget-object v4, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->mGGABase:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v4, :cond_1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->gpdop:Lcom/qianhe/baselib/bean/GPDOPEntity;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/qianhe/baselib/bean/GPDOPEntity;->pdop:F

    iget-object v5, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v5, v5, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v5, v5, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 299
    iget-object v4, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lon:D

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->lat:D

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->elve:D

    new-array p1, v1, [D

    aput-wide v6, p1, v3

    aput-wide v8, p1, v2

    aput-wide v10, p1, v0

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v4, "%s/5"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_1

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->mGGABase:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 303
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvTip:Landroid/widget/TextView;

    sget v4, Lcom/qianhe/yct/R$string;->configuring_startup_coordinates:I

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 306
    aget-wide v11, v10, v3

    add-double/2addr v4, v11

    .line 307
    aget-wide v11, v10, v2

    add-double/2addr v6, v11

    .line 308
    aget-wide v11, v10, v0

    add-double/2addr v8, v11

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->lon:Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->lat:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->elev:Ljava/lang/String;

    .line 313
    iput-boolean v2, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setMode:Z

    .line 315
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "SET,MODE,BASE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 240
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 241
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->mGGABase:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 242
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->updateSolutionStatus(I)V

    .line 243
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setBaseOk:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->resetBase:Z

    if-nez v0, :cond_2

    .line 244
    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseStartCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseStartCount:J

    .line 245
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseStartCount:J

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setBaseOk:Z

    .line 247
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->success:Z

    .line 249
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->success:Z

    xor-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;->onClose(I)V

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GPDOPEntity;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 231
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 232
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->gpdop:Lcom/qianhe/baselib/bean/GPDOPEntity;

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvPdop:Landroid/widget/TextView;

    iget v1, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->pdop:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "PDOP: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvPdop:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget p1, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->pdop:F

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sget p1, Lcom/qianhe/yct/R$color;->text_black:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/qianhe/yct/R$color;->red_light:I

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseTooFarEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 178
    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->checkTooFar:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->checkTooFar:Z

    .line 181
    sget p1, Lcom/qianhe/yct/R$string;->base_too_far:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;-><init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 135
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_2

    .line 136
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->initBaseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->initBaseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    :cond_0
    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setMode:Z

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz p1, :cond_1

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "SET,MODE,BASE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "SET,MODE,ROVER"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseStationResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 325
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseStationResponse;->result:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setBaseOk:Z

    .line 327
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "LOG,GGA,ONTIME,1"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 328
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvTip:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->waite_base_station_star:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvPdop:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->pregressbar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 333
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->config_fail:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseWorkModeResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setMode:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setMode:Z

    .line 204
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseWorkModeResponse;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetBaseWorkModeResponse;->line:Ljava/lang/String;

    const-string v1, "ROVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->binding:Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogFixedCoordinateStartupBinding;->tvTip:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->getting_coordinates:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 208
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "LOG,DOP,ONTIME,1"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,GGA,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->gga_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 211
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG,BESTPOS,ONTIME,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->bestpos_interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_1
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseWorkModeResponse;->line:Ljava/lang/String;

    const-string v0, "BASE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->newInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    const-string v0, ",ENCA,REPEAT"

    const-string v1, "SET,BASE,"

    const-string/jumbo v2, "|"

    const-string v3, ","

    if-eqz p1, :cond_3

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-wide v4, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 219
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-wide v4, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->lon:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->lat:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->elev:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    .line 225
    :cond_5
    sget p1, Lcom/qianhe/yct/R$string;->config_fail:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 151
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 153
    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->showBaseDisconnectedTip()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 361
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 369
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x3e99999a    # 0.3f

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 372
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;-><init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->listener:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 3

    .line 339
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "TipsDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 341
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 342
    const-string/jumbo v2, "tip"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string p1, "btnStr"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string p1, "cancelStr"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {v0, p4}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

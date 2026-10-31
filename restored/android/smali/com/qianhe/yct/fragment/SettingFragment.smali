.class public Lcom/qianhe/yct/fragment/SettingFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "SettingFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

.field private count:I

.field private dealerResponse:Lcom/qianhe/yct/event/DealerResponse;


# direct methods
.method public static synthetic $r8$lambda$-iCB0PklbA1DgKMjL9UnDNzvNCk(Lcom/qianhe/yct/fragment/SettingFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    const-string p1, "index"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvVersion:Landroid/widget/TextView;

    new-instance p2, Lcom/qianhe/yct/fragment/SettingFragment$11;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/SettingFragment$11;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 253
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/MainActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    .line 256
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const-string v3, ""

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, v3, v4}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "activeDisconnect"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 258
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {p1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result p1

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/qianhe/yct/event/StartDemo;

    invoke-direct {p1, p2}, Lcom/qianhe/yct/event/StartDemo;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/qianhe/yct/R$string;->switch_blue_mode:I

    invoke-static {p1, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 262
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result p2

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/StopDemo;

    invoke-direct {p2}, Lcom/qianhe/yct/event/StopDemo;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity;

    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->reConnect(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 267
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$6WqTWo6ziaB747-6_Wy5-EmQDPM(Lcom/qianhe/yct/fragment/SettingFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SettingFragment;->showServerEnvDialog()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$RdFPbRRUV_wgnavu2AhqliO4agk(Lcom/qianhe/yct/fragment/SettingFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result p2

    const-string v0, "mode"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 208
    new-instance p2, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p2}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    sget v1, Lcom/qianhe/yct/R$string;->selection_mode:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "requestKey"

    const-string v2, "admin_list"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    sget v2, Lcom/qianhe/yct/R$string;->debug:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 215
    sget p1, Lcom/qianhe/yct/R$string;->enable_demonstration:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->stop_demonstration:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget p1, Lcom/qianhe/yct/R$string;->upgrade_firmware:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string p0, "list"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$kbhAAZgZS_3t7_qVhhgXEAowQkI(Lcom/qianhe/yct/fragment/SettingFragment;)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/yct/utils/ServerEnvHelper;->restartApp(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$w0Fg3JAv-L9XSoq2V9rNWQl97ZE(Lcom/qianhe/yct/fragment/SettingFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    const-string p1, "index"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/SettingFragment;->applyServerEnvAndRestart(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SettingFragment;->showTestIpDialog()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$yNvMZu7r0X90BUu_37NEdnxlEUE(Lcom/qianhe/yct/fragment/SettingFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    const-string p1, "ip"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/fragment/SettingFragment;->applyServerEnvAndRestart(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lcom/qianhe/yct/fragment/SettingFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdealerResponse(Lcom/qianhe/yct/fragment/SettingFragment;)Lcom/qianhe/yct/event/DealerResponse;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->dealerResponse:Lcom/qianhe/yct/event/DealerResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lcom/qianhe/yct/fragment/SettingFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->count:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenRtkInfo(Lcom/qianhe/yct/fragment/SettingFragment;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SettingFragment;->openRtkInfo(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    return-void
.end method

.method private applyServerEnvAndRestart(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 305
    invoke-static {p2}, Lcom/qianhe/yct/utils/ServerEnvHelper;->saveTest(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/ServerEnvHelper;->saveProduction()V

    .line 309
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->restarting:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvVersion:Landroid/widget/TextView;

    new-instance p2, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private bindVersionText()V
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->app_version:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " v%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "2.0.2609.109"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/qianhe/yct/utils/ServerEnvHelper;->isTestEnv()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/qianhe/yct/R$string;->test_env_mark:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getDeviceModel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/SettingFragment;->updateRtkIcon(I)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvUserManage:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$1;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvDeviceManage:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$2;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvZeroing:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$3;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvRtkInfo:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$4;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvBaseInfo:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$5;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvDealer:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$6;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvConfig:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$7;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvAboutApp:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$8;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvVersion:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$9;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SettingFragment;->bindVersionText()V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvVersion:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$10;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-string v2, "admin"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-string v2, "logdetails"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-string v2, "server_env"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-string v2, "server_ip"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/SettingFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/SettingFragment;)V

    const-string v2, "admin_list"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private openRtkInfo(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 3

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showServerEnvDialog()V
    .locals 4

    .line 281
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    sget v2, Lcom/qianhe/yct/R$string;->select_server_env:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "requestKey"

    const-string v3, "server_env"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    sget v3, Lcom/qianhe/yct/R$string;->production_env:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget v3, Lcom/qianhe/yct/R$string;->test_env:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v3, "list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 290
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooseListDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showTestIpDialog()V
    .locals 4

    .line 295
    new-instance v0, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ServerIpInputDialogFragment;-><init>()V

    .line 296
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 297
    sget v2, Lcom/qianhe/yct/R$string;->enter_server_ip:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "ip"

    invoke-static {}, Lcom/qianhe/yct/utils/ServerEnvHelper;->getSavedTestIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ServerIpInputDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateRtkIcon(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 338
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_h5_info:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 340
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_h5pro_info:I

    goto :goto_0

    .line 342
    :cond_1
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ex30_info:I

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvRtkInfo:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_right:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/SettingFragment;->initView()V

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    const-string p3, "GET,FEATURES"

    invoke-direct {p2, p3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string p2, "basic"

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getDealerList()V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 363
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    .line 364
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 332
    iget p1, p1, Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;->deviceModel:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/SettingFragment;->updateRtkIcon(I)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 319
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 320
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v0, "EXCAVATOR2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvZeroing:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvZeroing:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 350
    iget p1, p1, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->deviceSn_empty:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/DealerResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment;->dealerResponse:Lcom/qianhe/yct/event/DealerResponse;

    .line 358
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvDealer:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/qianhe/yct/event/DealerResponse;->contact_info:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment;->binding:Lcom/qianhe/yct/databinding/FragmentSettingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSettingBinding;->tvBaseInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

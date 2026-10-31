.class public Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "LoginedDeviceManageActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/LoginedDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "logined_devices"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$1;-><init>(Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;)V

    .line 55
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    new-instance v0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->mData:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->adapter:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    .line 58
    iget-object v1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->adapter:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;-><init>(Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->device_manage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->binding:Lcom/qianhe/yct/databinding/ActivityLoginedDeviceManageBinding;

    .line 46
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/LogoutResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/LoginedDevice;

    .line 82
    iget v1, v1, Lcom/qianhe/yct/bean/LoginedDevice;->id:I

    iget v2, p1, Lcom/qianhe/yct/event/LogoutResponse;->loggedDeviceId:I

    if-ne v1, v2, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 84
    sget p1, Lcom/qianhe/yct/R$string;->operation_success:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->adapter:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;

    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->mData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->setData(Ljava/util/List;)V

    .line 90
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logined_devices"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u767b\u5f55\u8bbe\u5907\u4fdd\u5b58\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

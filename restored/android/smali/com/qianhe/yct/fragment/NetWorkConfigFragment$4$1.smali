.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;
.super Ljava/lang/Object;
.source "NetWorkConfigFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

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
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$mgetRole(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v2, v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1$1;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 168
    :cond_0
    sget-object v3, Lcom/qianhe/baselib/enums/WifiRoleEnum;->STATION:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET,WLAN0,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",DHCPC"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    sget-object v3, Lcom/qianhe/baselib/enums/WifiRoleEnum;->AP:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET,WLAN0,AP,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DHCPD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    const-string v0, "SET,WLAN0,DISABLE"

    .line 175
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4$1;->this$1:Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    iget-object v3, v3, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

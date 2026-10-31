.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->edtOrder:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputhasSend(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Z)V

    .line 190
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    array-length v3, v1

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;

    move-result-object v3

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->setFilter(Ljava/lang/String;)V

    .line 192
    :cond_1
    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {v1, v0, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgethistoryList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgethistoryList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgethistoryList(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qianhe/baselib/utils/FileUtil;->saveOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_2
    new-instance p1, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ToastDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$5;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v2, Lcom/qianhe/yct/R$string;->invalid_instruction:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

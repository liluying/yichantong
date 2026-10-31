.class Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;
.super Ljava/lang/Object;
.source "BaseStationInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->access$000(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1$1;->this$1:Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/BaseStationInfoFragment$1;->this$0:Lcom/qianhe/yct/fragment/BaseStationInfoFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/BaseStationInfoFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseStationInfoFragment;)Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentBasestationInfoBinding;->tvCorsConnectType:Landroid/widget/TextView;

    sget-object v3, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v3

    if-ne v0, v3, :cond_0

    const-string v0, "NTRIP"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "RSS SDK"

    goto :goto_0

    :cond_1
    const-string v0, "RSS ACC"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

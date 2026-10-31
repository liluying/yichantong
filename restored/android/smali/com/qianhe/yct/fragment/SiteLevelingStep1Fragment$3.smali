.class Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;
.super Ljava/lang/Object;
.source "SiteLevelingStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 151
    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 152
    new-array v10, v0, [D

    .line 153
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    aget-wide v4, v2, v1

    const/4 v11, 0x1

    aget-wide v6, v2, v11

    const/4 v8, 0x2

    aget-wide v8, v2, v8

    invoke-virtual/range {v3 .. v10}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v2, v10}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->access$000(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;[D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    move p1, v1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$misSlopeLeveling(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$misStartEndCoincide(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->start_end_cannot_coincide:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 166
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbaseStationInfo(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/BaseStationEntity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbaseStationInfo(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/BaseStationEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->access$100(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbaseStationInfo(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/BaseStationEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->access$200(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 170
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbaseStationInfo(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/BaseStationEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    invoke-static {v1, v2, v3, v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->access$300(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;DI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-nez p1, :cond_7

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$msaveProjectAndStartWork(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    return-void

    .line 175
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

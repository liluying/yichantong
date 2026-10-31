.class Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;
.super Ljava/lang/Object;
.source "CurvedSlopeStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    aget-wide v1, p1, v0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v6, 0x2

    aget-wide v7, p1, v6

    const/4 p1, 0x3

    new-array v9, p1, [D

    aput-wide v1, v9, v0

    aput-wide v4, v9, v3

    aput-wide v7, v9, v6

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aget-wide v7, v1, v3

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aget-wide v10, v1, v6

    new-array p1, p1, [D

    aput-wide v4, p1, v0

    aput-wide v7, p1, v3

    aput-wide v10, p1, v6

    invoke-static {v9, p1}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->coordsListJson:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_0
    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v0, v3

    if-gez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->start_end_cannot_coincide:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;Lcom/qianhe/baselib/bean/CurvedSlopeEntity;)V

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    return-void

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 146
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 148
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    return-void
.end method

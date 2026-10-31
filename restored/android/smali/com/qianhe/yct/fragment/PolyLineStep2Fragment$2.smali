.class Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;
.super Ljava/lang/Object;
.source "PolyLineStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 139
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const/4 v3, 0x3

    .line 140
    new-array v11, v3, [D

    .line 141
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    aget-wide v5, v2, v1

    aget-wide v7, v2, v0

    const/4 v3, 0x2

    aget-wide v9, v2, v3

    invoke-virtual/range {v4 .. v11}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v2, v11}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->access$000(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;[D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    add-int/2addr p1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v0

    .line 153
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x4

    if-ge p1, v2, :cond_5

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v0, v4

    if-gez p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->start_end_cannot_coincide:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 155
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mapplySlopeBeforeSave(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 158
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$msaveProjectAndStartWork(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    :cond_7
    :goto_3
    return-void
.end method

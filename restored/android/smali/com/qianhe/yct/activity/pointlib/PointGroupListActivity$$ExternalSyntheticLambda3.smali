.class public final synthetic Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/PointGroupEntity;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;->f$1:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p3, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onConfirm(Ljava/io/File;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;->f$1:Lcom/qianhe/baselib/bean/PointGroupEntity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->$r8$lambda$TBuErNIjy53aig8FOx-SY410XxI(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

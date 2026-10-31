.class Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;
.super Ljava/lang/Object;
.source "PolyLineStep2Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;


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

    .line 168
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(ILjava/lang/String;)V
    .locals 3

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    const-string v2, "coordsListJson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const-string p2, "cadPath"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isOverallSlopeMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    const-string p1, "disableElevation"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object p1

    iget-wide p1, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    const-string v1, "overallSlopeRatio"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onDel(I)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->removePoint(I)V

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpointFromCad(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 188
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpointFromCad(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mhasCadPickedPoints(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object p1

    const-string v1, ""

    iput-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/qianhe/baselib/bean/PolyLineEntity;->coordsListJson:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$msyncPointsList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    .line 196
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep2Binding;->tvContinue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$misSegmentMode(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$misEditProject(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mrecalculateAllRatiosFromCoords(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    return-void

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$misOverallMode(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mapplyOverallSlopeElevations(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)V

    :cond_4
    return-void
.end method

.method public onInsert(IZ)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$minsertPoint(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;IZ)V

    return-void
.end method

.method public onRatioChanged(ILjava/lang/Double;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$fgetapplyingRatioChange(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$misSegmentMode(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;->-$$Nest$mapplyManualSegmentRatio(Lcom/qianhe/yct/fragment/PolyLineStep2Fragment;ILjava/lang/Double;)V

    :cond_1
    :goto_0
    return-void
.end method

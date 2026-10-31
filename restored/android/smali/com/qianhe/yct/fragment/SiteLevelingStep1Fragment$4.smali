.class Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;
.super Ljava/lang/Object;
.source "SiteLevelingStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;


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

    .line 185
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(ILjava/lang/String;)V
    .locals 3

    .line 188
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    const-string v2, "coordsListJson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const-string p2, "cadPath"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onDel(I)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/PolyLinePreView;->removePoint(I)V

    if-ltz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointFromCad(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 201
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointFromCad(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$mhasCadPickedPoints(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->coordsListJson:Ljava/lang/String;

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$mrefreshContinueEnabled(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)V

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetpointsList(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep1Binding;->tvMeasure:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->start_collection:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public synthetic onInsert(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener$-CC;->$default$onInsert(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;IZ)V

    return-void
.end method

.method public synthetic onRatioChanged(ILjava/lang/Double;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener$-CC;->$default$onRatioChanged(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;ILjava/lang/Double;)V

    return-void
.end method

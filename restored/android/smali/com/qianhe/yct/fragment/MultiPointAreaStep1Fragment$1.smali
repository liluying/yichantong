.class Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;
.super Ljava/lang/Object;
.source "MultiPointAreaStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(ILjava/lang/String;)V
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetmultiPointAreaEntity(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    const-string v2, "coordsListJson"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetmultiPointAreaEntity(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const-string p2, "cadPath"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetlauncher(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onDel(I)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentMultiPointAreaStep1Binding;->areaPreview:Lcom/qianhe/yct/view/MulPointAreaPreView;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/MulPointAreaPreView;->removePoint(I)V

    .line 160
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetmultiPointAreaEntity(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    move-result-object p1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$fgetmList(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$mupdateContinueButton(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

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

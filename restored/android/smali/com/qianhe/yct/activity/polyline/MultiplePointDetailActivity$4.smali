.class Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;
.super Ljava/lang/Object;
.source "MultiplePointDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v5, v0, v2

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v7, v0, v2

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylinePointDetailBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    .line 182
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v2, 0x0

    aput-wide v5, p1, v2

    .line 183
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v3, 0x1

    aput-wide v7, p1, v3

    .line 184
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetdisableElevation(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Z

    move-result p1

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_1

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    aput-wide v0, p1, v3

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$mapplyOverallSlopeElevationsToList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    aget-wide v0, p1, v3

    .line 190
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$msetElevText(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;D)V

    :goto_0
    move-wide v9, v0

    goto :goto_1

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v4, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    aput-wide v0, p1, v3

    goto :goto_0

    :goto_1
    const/4 p1, 0x3

    .line 194
    new-array v11, p1, [D

    .line 195
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    invoke-virtual/range {v4 .. v11}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1, v11}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->access$000(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;[D)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fputcoordsListJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/lang/String;)V

    .line 200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsListJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coordsListJson"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcorsArray(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "cors"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cadPath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    sget v0, Lcom/qianhe/yct/R$string;->modify_success:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 196
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$4;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

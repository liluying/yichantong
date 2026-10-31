.class Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;
.super Ljava/lang/Object;
.source "MultiplePointDetailActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetinitJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fputcoordsListJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetinitCadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fputcadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v2, v2, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsListJson(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1$1;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1$1;-><init>(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;)V

    .line 142
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 141
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fputcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;Ljava/util/List;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetcoordsList(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v1, v1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$fgetposition(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 145
    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2$1;->this$1:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;

    iget-object v2, v1, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$2;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    const/4 v1, 0x1

    aget-wide v5, v0, v1

    const/4 v1, 0x2

    aget-wide v7, v0, v1

    invoke-static/range {v2 .. v8}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$mshowCoords(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;DDD)V

    :cond_0
    return-void
.end method

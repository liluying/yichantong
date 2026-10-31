.class Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;
.super Ljava/lang/Object;
.source "PolyLineWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetmBeepPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/utils/BeepPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/BeepPlayer;->stop()V

    .line 259
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fputmBeepPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Lcom/qianhe/yct/utils/BeepPlayer;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$minitPlayer(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    .line 264
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivSound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

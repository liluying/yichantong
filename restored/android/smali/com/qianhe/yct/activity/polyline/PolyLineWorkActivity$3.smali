.class Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;
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

    .line 212
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPolylineWorkBinding;->polyLineView:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/PolyLinePreView;->toggleDirection()V

    return-void
.end method

.class Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;
.super Ljava/lang/Object;
.source "CurvedSlopeWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCurvedSlopeWorkBinding;->ivMapState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$4;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fgetyMap(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;)Lcom/qianhe/yct/view/map/YMap;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/map/YMap;->setVisibility(I)V

    return-void
.end method

.class Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$3;
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

    .line 169
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;)V

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity$3;->this$0:Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/polyline/MultiplePointDetailActivity;->goPointLibrary()V

    return-void
.end method

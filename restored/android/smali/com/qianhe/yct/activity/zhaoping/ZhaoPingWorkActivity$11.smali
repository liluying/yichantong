.class Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$11;
.super Ljava/lang/Object;
.source "ZhaoPingWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 486
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;Z)V

    return-void
.end method

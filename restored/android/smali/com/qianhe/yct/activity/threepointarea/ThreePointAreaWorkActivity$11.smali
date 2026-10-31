.class Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$11;
.super Ljava/lang/Object;
.source "ThreePointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 486
    iget-object p1, p0, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;Z)V

    return-void
.end method

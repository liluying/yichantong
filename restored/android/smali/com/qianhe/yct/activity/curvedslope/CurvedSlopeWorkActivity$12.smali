.class Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$12;
.super Ljava/lang/Object;
.source "CurvedSlopeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->showFixedCoordinateStartupDialog()V
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

    .line 472
    iput-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 475
    iget-object p1, p0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;Z)V

    return-void
.end method

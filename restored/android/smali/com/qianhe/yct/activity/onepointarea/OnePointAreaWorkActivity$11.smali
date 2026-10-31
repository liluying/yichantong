.class Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$11;
.super Ljava/lang/Object;
.source "OnePointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 470
    iget-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;Z)V

    return-void
.end method

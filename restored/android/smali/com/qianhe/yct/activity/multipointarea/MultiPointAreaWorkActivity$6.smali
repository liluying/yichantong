.class Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$6;
.super Ljava/lang/Object;
.source "MultiPointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 673
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Z)V

    return-void
.end method

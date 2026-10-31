.class Lcom/qianhe/yct/activity/line/LineWorkActivity$12;
.super Ljava/lang/Object;
.source "LineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 465
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V

    return-void
.end method

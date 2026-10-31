.class Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$11;
.super Ljava/lang/Object;
.source "ShuaPoWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 558
    iget-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;Z)V

    return-void
.end method

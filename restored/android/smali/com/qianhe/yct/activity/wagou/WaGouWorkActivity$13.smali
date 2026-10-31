.class Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$13;
.super Ljava/lang/Object;
.source "WaGouWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 540
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Z)V

    return-void
.end method

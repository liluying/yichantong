.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$13;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showFixedCoordinateStartupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    .line 507
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Z)V

    return-void
.end method

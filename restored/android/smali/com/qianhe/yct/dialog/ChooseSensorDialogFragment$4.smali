.class Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$4;
.super Ljava/lang/Object;
.source "ChooseSensorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->-$$Nest$mdisconnectSensor(Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;)V

    return-void
.end method

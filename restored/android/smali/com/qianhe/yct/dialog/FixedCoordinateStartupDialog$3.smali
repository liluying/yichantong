.class Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$3;
.super Ljava/lang/Object;
.source "FixedCoordinateStartupDialog.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->showBaseDisconnectedTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$3;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$3;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$3;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

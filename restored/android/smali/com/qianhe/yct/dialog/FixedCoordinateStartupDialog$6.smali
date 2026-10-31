.class Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;
.super Ljava/lang/Object;
.source "FixedCoordinateStartupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->onStart()V
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

    .line 372
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$6;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetsuccess(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;->onClose(I)V

    :cond_1
    return-void
.end method

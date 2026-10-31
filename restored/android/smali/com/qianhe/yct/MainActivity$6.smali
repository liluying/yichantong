.class Lcom/qianhe/yct/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/MainActivity;->onEventMessage(Lcom/qianhe/yct/event/CheckTokenResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/MainActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$6;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$6;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->gotoUserManage()V

    return-void
.end method

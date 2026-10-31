.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$1;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showShareExpiredDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mfinishSharePage(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mfinishSharePage(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    return-void
.end method

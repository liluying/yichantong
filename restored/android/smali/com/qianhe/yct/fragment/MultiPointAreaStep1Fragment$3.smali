.class Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$3;
.super Ljava/lang/Object;
.source "MultiPointAreaStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->confirmClearAllCoords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

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

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;->-$$Nest$mclearAllCoords(Lcom/qianhe/yct/fragment/MultiPointAreaStep1Fragment;)V

    return-void
.end method

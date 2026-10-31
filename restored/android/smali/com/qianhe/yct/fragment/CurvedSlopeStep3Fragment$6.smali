.class Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$6;
.super Ljava/lang/Object;
.source "CurvedSlopeStep3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->confirmClearAllCoords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

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

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;->-$$Nest$mclearAllCoords(Lcom/qianhe/yct/fragment/CurvedSlopeStep3Fragment;)V

    return-void
.end method

.class Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$3;
.super Ljava/lang/Object;
.source "PolyLineStep1Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$fgetcurrentSlopeMode(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$3;->this$0:Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->-$$Nest$mupdateStatusIcon(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.class Lcom/qianhe/yct/fragment/PointCreateFragment$5;
.super Ljava/lang/Object;
.source "PointCreateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PointCreateFragment;->setupCoordManualEditWatchers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$5;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 851
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$5;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mmarkManualCoordEdit(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

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

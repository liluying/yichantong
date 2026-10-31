.class Lcom/qianhe/yct/fragment/DemoCustomDataFragment$3;
.super Ljava/lang/Object;
.source "DemoCustomDataFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$3;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$3;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$mapplySourceGeodeticInput(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    :cond_0
    return-void
.end method

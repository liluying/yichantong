.class Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$3;
.super Ljava/lang/Object;
.source "CurvedSlopeChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$3;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "previous"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

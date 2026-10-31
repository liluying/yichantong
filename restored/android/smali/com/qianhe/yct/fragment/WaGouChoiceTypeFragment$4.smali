.class Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$4;
.super Ljava/lang/Object;
.source "WaGouChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$4;->this$0:Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "previous"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

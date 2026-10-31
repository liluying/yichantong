.class Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$6;
.super Ljava/lang/Object;
.source "ThreePointAreaStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$6;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "previous"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

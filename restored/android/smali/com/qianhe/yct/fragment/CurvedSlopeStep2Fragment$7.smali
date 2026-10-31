.class Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$7;
.super Ljava/lang/Object;
.source "CurvedSlopeStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "previous"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

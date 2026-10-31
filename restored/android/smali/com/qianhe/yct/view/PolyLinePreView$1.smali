.class Lcom/qianhe/yct/view/PolyLinePreView$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "PolyLinePreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/PolyLinePreView;->registerBackCallback(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/PolyLinePreView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/PolyLinePreView;Z)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/qianhe/yct/view/PolyLinePreView$1;->this$0:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/qianhe/yct/view/PolyLinePreView$1;->this$0:Lcom/qianhe/yct/view/PolyLinePreView;

    invoke-static {v0}, Lcom/qianhe/yct/view/PolyLinePreView;->-$$Nest$mexitFullscreen(Lcom/qianhe/yct/view/PolyLinePreView;)V

    return-void
.end method

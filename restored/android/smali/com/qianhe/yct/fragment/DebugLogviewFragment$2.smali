.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$2;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$2;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$2;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetlogAdapter(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/activity/debug/DebugAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->clear()V

    return-void
.end method

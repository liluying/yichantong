.class Lcom/qianhe/yct/adapter/PortListAdapter$1;
.super Ljava/lang/Object;
.source "PortListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/PortListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/PortListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/PortListAdapter;

.field final synthetic val$bean:Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/PortListAdapter;Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PortListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PortListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/PortListAdapter$1;->val$bean:Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PortListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PortListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PortListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PortListAdapter;)Lcom/qianhe/yct/adapter/PortListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/PortListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/PortListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/PortListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/PortListAdapter;)Lcom/qianhe/yct/adapter/PortListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PortListAdapter$1;->val$bean:Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/PortListAdapter$OnActionListener;->onAction(Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;)V

    :cond_0
    return-void
.end method

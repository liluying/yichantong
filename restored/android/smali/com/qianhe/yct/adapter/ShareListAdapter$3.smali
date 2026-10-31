.class Lcom/qianhe/yct/adapter/ShareListAdapter$3;
.super Ljava/lang/Object;
.source "ShareListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ShareListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

.field final synthetic val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ShareListAdapter;Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$3;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$3;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$3;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ShareListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$3;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$3;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$mshowPopupMenu(Lcom/qianhe/yct/adapter/ShareListAdapter;Landroid/view/View;Lcom/qianhe/baselib/bean/ShareEntity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;
.super Ljava/lang/Object;
.source "ExcavatorListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

.field final synthetic val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$2;->val$excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->-$$Nest$mshowPopupMenu(Lcom/qianhe/yct/adapter/ExcavatorListAdapter;Landroid/view/View;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

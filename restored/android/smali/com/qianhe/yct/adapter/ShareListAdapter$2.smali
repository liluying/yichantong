.class Lcom/qianhe/yct/adapter/ShareListAdapter$2;
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

    .line 91
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ShareListAdapter;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/adapter/ShareListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->val$shareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->showSelUi(Z)V

    :cond_1
    return v0
.end method

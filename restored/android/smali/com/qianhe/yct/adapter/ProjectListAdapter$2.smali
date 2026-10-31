.class Lcom/qianhe/yct/adapter/ProjectListAdapter$2;
.super Ljava/lang/Object;
.source "ProjectListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ProjectListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ProjectListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

.field final synthetic val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ProjectListAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$2;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$fgetshowSelUi(Lcom/qianhe/yct/adapter/ProjectListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ProjectListAdapter$2;->val$baseProject:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->-$$Nest$mshowPopupMenu(Lcom/qianhe/yct/adapter/ProjectListAdapter;Landroid/view/View;Lcom/qianhe/baselib/base/BaseProEntity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

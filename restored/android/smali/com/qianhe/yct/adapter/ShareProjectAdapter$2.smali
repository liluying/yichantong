.class Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;
.super Ljava/lang/Object;
.source "ShareProjectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ShareProjectAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

.field final synthetic val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ShareProjectAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetmActivity(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetmActivity(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 138
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;->onAction(Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_2
    return-void
.end method

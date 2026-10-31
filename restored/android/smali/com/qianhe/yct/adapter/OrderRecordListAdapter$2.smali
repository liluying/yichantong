.class Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;
.super Ljava/lang/Object;
.source "OrderRecordListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

.field final synthetic val$entity:Lcom/qianhe/baselib/bean/OrderRecordEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;Lcom/qianhe/baselib/bean/OrderRecordEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->val$entity:Lcom/qianhe/baselib/bean/OrderRecordEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 94
    sget-object v0, Lcom/qianhe/baselib/Constant;->WX_PLAY_APPID:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 96
    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result p1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5fae\u4fe1API\u6ce8\u518capp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u5931\u8d25\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->val$entity:Lcom/qianhe/baselib/bean/OrderRecordEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/OrderRecordEntity;->orderNo:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fputorderNo(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;Ljava/lang/String;)V

    .line 100
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    .line 101
    const-string/jumbo v1, "snsapi_userinfo"

    iput-object v1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetorderNo(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 103
    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    :cond_1
    return-void
.end method

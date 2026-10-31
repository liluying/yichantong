.class Lcom/qianhe/yct/adapter/DealerListAdapter$1;
.super Ljava/lang/Object;
.source "DealerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/DealerListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/DealerListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/DealerListAdapter;

.field final synthetic val$contactInfo:Lcom/qianhe/yct/event/DealerResponse$ContactInfo;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/DealerListAdapter;Lcom/qianhe/yct/event/DealerResponse$ContactInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/qianhe/yct/adapter/DealerListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DealerListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/DealerListAdapter$1;->val$contactInfo:Lcom/qianhe/yct/event/DealerResponse$ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/DealerListAdapter$1;->val$contactInfo:Lcom/qianhe/yct/event/DealerResponse$ContactInfo;

    iget-object v1, v1, Lcom/qianhe/yct/event/DealerResponse$ContactInfo;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/adapter/DealerListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/DealerListAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/DealerListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/DealerListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

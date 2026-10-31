.class Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;
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

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$MyViewHolder;->tvHostNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->host_number:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/OrderRecordListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/OrderRecordListAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/OrderRecordListAdapter;->-$$Nest$fgetcontext(Lcom/qianhe/yct/adapter/OrderRecordListAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->copy_to_clipboard:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

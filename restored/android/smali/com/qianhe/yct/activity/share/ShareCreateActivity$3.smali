.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 441
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 442
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

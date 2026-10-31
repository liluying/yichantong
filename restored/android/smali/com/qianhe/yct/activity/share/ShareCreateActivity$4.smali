.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;
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

    .line 448
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 451
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareCode(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareCode(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/lang/String;

    move-result-object p1

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->access$000(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/lang/String;Z)V

    return-void
.end method

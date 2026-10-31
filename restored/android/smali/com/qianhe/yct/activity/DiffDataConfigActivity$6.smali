.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$6;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 260
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->access$000(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "SUPPORT_NTRIP"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mshowChooseCorsDialog(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    return-void
.end method

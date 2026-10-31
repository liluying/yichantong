.class Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;
.super Ljava/lang/Object;
.source "ShareJoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareJoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 56
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareJoinActivity;)Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareJoinBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    sget v1, Lcom/qianhe/yct/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    sget v4, Lcom/qianhe/yct/R$string;->share_code_flag:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "\\d{5,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fputrequest(Lcom/qianhe/yct/activity/share/ShareJoinActivity;Z)V

    .line 66
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v3, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareJoinActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/share/ShareJoinActivity;->-$$Nest$fputrequest(Lcom/qianhe/yct/activity/share/ShareJoinActivity;Z)V

    .line 71
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v3, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

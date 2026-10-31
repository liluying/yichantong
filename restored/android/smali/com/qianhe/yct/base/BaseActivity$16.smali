.class Lcom/qianhe/yct/base/BaseActivity$16;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->gotoShareProjectFromCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1232
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1233
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, v1, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, ""

    const-string v3, "pending_clip_share_code"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->promptOpenSharedProject(Ljava/lang/String;)V

    return-void

    .line 1239
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/base/BaseActivity;->isFromOutside()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/base/BaseActivity;->readClipboard()Ljava/lang/String;

    move-result-object v1

    .line 1241
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->isShareCodeClipboardContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1242
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->extractShareCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1244
    :cond_4
    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v4, v1}, Lcom/qianhe/yct/base/BaseActivity;->markClipboardSnapshotHandled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 1245
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u526a\u5207\u677f\u5185\u5bb9\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1247
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->promptOpenSharedProject(Ljava/lang/String;)V

    return-void

    .line 1249
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1250
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$16;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->gotoUserManage()V

    :cond_7
    :goto_0
    return-void
.end method

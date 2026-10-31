.class public Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    const-string p1, "============ \u5df2\u4eae\u5c4f ============"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$fputmScreenOffTime(Lcom/qianhe/yct/base/BaseActivity;J)V

    .line 282
    const-string p1, "============ \u5df2\u606f\u5c4f ============"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.class Lcom/qianhe/yct/activity/TestCadActivity$1;
.super Ljava/lang/Object;
.source "TestCadActivity.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/TestCadActivity;->setCadEntityChooseLauncher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/TestCadActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/TestCadActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/qianhe/yct/activity/TestCadActivity$1;->this$0:Lcom/qianhe/yct/activity/TestCadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    const-string v0, "cad_result_choose_point"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p1

    .line 85
    const-class v0, Lcom/qianhe/yct/activity/TestCadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u9009\u53d6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    :cond_0
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/TestCadActivity$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

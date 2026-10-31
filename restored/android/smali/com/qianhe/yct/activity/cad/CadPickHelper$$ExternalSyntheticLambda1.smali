.class public final synthetic Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/activity/cad/CadPickHelper$UiExecutor;


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

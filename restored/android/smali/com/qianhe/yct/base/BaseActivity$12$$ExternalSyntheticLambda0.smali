.class public final synthetic Lcom/qianhe/yct/base/BaseActivity$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    return-void
.end method

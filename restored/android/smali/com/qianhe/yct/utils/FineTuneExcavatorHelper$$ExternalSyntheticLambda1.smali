.class public final synthetic Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/ExcavatorEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;

    iput-object p2, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;

    iget-object v1, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->$r8$lambda$AzVkpKBoQECZznlTcwq1BtpC83o(Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.class public final synthetic Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field public final synthetic f$2:Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p3, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->$r8$lambda$HTnhJRAyZyTq2IPgroDZKeAevGQ(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    return-void
.end method

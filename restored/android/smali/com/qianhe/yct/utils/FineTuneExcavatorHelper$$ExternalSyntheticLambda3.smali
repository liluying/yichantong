.class public final synthetic Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/db/DatabaseManager;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/db/DatabaseManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/db/DatabaseManager;

    return-void
.end method


# virtual methods
.method public final exists(Ljava/lang/String;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda3;->f$0:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

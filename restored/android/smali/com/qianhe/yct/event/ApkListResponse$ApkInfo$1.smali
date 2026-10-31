.class Lcom/qianhe/yct/event/ApkListResponse$ApkInfo$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ApkListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->getLocalizedUpdateLog(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo$1;->this$0:Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

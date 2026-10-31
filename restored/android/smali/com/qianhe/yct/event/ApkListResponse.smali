.class public Lcom/qianhe/yct/event/ApkListResponse;
.super Ljava/lang/Object;
.source "ApkListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;,
        Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;
    }
.end annotation


# instance fields
.field public apk_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public base_file_md5:Ljava/lang/String;

.field public base_file_size:J

.field public err_msg:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/qianhe/yct/event/ApkListResponse;->state:I

    return-void
.end method

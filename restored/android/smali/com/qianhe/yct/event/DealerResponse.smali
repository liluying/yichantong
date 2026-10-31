.class public Lcom/qianhe/yct/event/DealerResponse;
.super Ljava/lang/Object;
.source "DealerResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/event/DealerResponse$ContactInfo;
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public contact_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/DealerResponse$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field public err_msg:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/qianhe/baselib/bean/OrderRecordEntity;
.super Ljava/lang/Object;
.source "OrderRecordEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_name"
    .end annotation
.end field

.field public count:I

.field public createEpoch:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_epoch"
    .end annotation
.end field

.field public createEpochAfter:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expire_epoch_after"
    .end annotation
.end field

.field public finishedEpoch:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finished_epoch"
    .end annotation
.end field

.field public id:J

.field public orderNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_no"
    .end annotation
.end field

.field public payState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_state"
    .end annotation
.end field

.field public price:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field public priceId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_id"
    .end annotation
.end field

.field public remarks:Ljava/lang/String;

.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/qianhe/yct/event/PriceListResponse;
.super Ljava/lang/Object;
.source "PriceListResponse.java"


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public hasExclusivePrice:Z

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/RenewPriceBean;",
            ">;"
        }
    .end annotation
.end field

.field public state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/event/PriceListResponse;->list:Ljava/util/List;

    .line 28
    iput p1, p0, Lcom/qianhe/yct/event/PriceListResponse;->state:I

    .line 29
    iput-object p2, p0, Lcom/qianhe/yct/event/PriceListResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/RenewPriceBean;",
            ">;Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/event/PriceListResponse;->list:Ljava/util/List;

    .line 33
    iput p1, p0, Lcom/qianhe/yct/event/PriceListResponse;->state:I

    .line 34
    iput-boolean p3, p0, Lcom/qianhe/yct/event/PriceListResponse;->hasExclusivePrice:Z

    .line 35
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 37
    iget-object p1, p0, Lcom/qianhe/yct/event/PriceListResponse;->list:Ljava/util/List;

    new-instance p2, Lcom/qianhe/yct/event/PriceListResponse$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/qianhe/yct/event/PriceListResponse$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p2}, Lcom/qianhe/yct/event/PriceListResponse$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/event/PriceListResponse$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

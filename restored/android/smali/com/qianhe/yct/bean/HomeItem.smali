.class public Lcom/qianhe/yct/bean/HomeItem;
.super Ljava/lang/Object;
.source "HomeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private iconRes:I

.field private id:I

.field private titleRes:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/qianhe/yct/bean/HomeItem;->id:I

    .line 12
    iput p2, p0, Lcom/qianhe/yct/bean/HomeItem;->iconRes:I

    .line 13
    iput p3, p0, Lcom/qianhe/yct/bean/HomeItem;->titleRes:I

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/qianhe/yct/bean/HomeItem;->iconRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/qianhe/yct/bean/HomeItem;->id:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/qianhe/yct/bean/HomeItem;->titleRes:I

    return v0
.end method

.method public setIconRes(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/qianhe/yct/bean/HomeItem;->iconRes:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/qianhe/yct/bean/HomeItem;->id:I

    return-void
.end method

.method public setTitleRes(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/qianhe/yct/bean/HomeItem;->titleRes:I

    return-void
.end method

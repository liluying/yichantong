.class final Lcom/qh/xcad/DxfTextSupplement$ParsedText;
.super Ljava/lang/Object;
.source "DxfTextSupplement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/DxfTextSupplement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedText"
.end annotation


# instance fields
.field attachment:I

.field color:I

.field content:Ljava/lang/String;

.field dirX:D

.field dirY:D

.field hasDirX:Z

.field hasDirY:Z

.field hasHeight:Z

.field hasRotation:Z

.field hasX:Z

.field hasY:Z

.field hasZ:Z

.field height:D

.field layer:Ljava/lang/String;

.field mtext:Z

.field rawText:Ljava/lang/String;

.field rotation:D

.field x:D

.field y:D

.field z:D


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 352
    iput v0, p0, Lcom/qh/xcad/DxfTextSupplement$ParsedText;->color:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qh/xcad/DxfTextSupplement-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qh/xcad/DxfTextSupplement$ParsedText;-><init>()V

    return-void
.end method

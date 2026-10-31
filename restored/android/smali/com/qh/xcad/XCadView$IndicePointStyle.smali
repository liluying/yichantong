.class final Lcom/qh/xcad/XCadView$IndicePointStyle;
.super Ljava/lang/Object;
.source "XCadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndicePointStyle"
.end annotation


# instance fields
.field final color:I

.field final displayNumber:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/qh/xcad/XCadView$IndicePointStyle;->color:I

    .line 157
    iput-object p2, p0, Lcom/qh/xcad/XCadView$IndicePointStyle;->displayNumber:Ljava/lang/Integer;

    return-void
.end method

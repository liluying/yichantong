.class public final Lcom/qh/xcad/XCadParseClient$Result;
.super Ljava/lang/Object;
.source "XCadParseClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadParseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final data:[B

.field public final message:Ljava/lang/String;

.field public final status:I


# direct methods
.method constructor <init>([BILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/qh/xcad/XCadParseClient$Result;->data:[B

    .line 46
    iput p2, p0, Lcom/qh/xcad/XCadParseClient$Result;->status:I

    .line 47
    iput-object p3, p0, Lcom/qh/xcad/XCadParseClient$Result;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ok()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/qh/xcad/XCadParseClient$Result;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

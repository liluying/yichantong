.class Lcom/qh/xcad/XCadParseService$1;
.super Lcom/qh/xcad/IXCadParseService$Stub;
.source "XCadParseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/XCadParseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qh/xcad/XCadParseService;


# direct methods
.method constructor <init>(Lcom/qh/xcad/XCadParseService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/qh/xcad/XCadParseService$1;->this$0:Lcom/qh/xcad/XCadParseService;

    invoke-direct {p0}, Lcom/qh/xcad/IXCadParseService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/qh/xcad/ParseReply;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/qh/xcad/XCadParseService$1;->this$0:Lcom/qh/xcad/XCadParseService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qh/xcad/XCadParseService;->-$$Nest$smdoParse(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/ParseReply;

    move-result-object p1

    return-object p1
.end method

.class Lcom/qh/xcad/XCadParseClient$1;
.super Ljava/lang/Object;
.source "XCadParseClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qh/xcad/XCadParseClient;->parseBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/XCadParseClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$DIED:Ljava/lang/Object;

.field final synthetic val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$q:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/qh/xcad/XCadParseClient$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/qh/xcad/XCadParseClient$1;->val$q:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p3, p0, Lcom/qh/xcad/XCadParseClient$1;->val$DIED:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/qh/xcad/XCadParseClient$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/qh/xcad/XCadParseClient$1;->val$q:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {p2}, Lcom/qh/xcad/IXCadParseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qh/xcad/IXCadParseService;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/qh/xcad/XCadParseClient$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/qh/xcad/XCadParseClient$1;->val$q:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, p0, Lcom/qh/xcad/XCadParseClient$1;->val$DIED:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

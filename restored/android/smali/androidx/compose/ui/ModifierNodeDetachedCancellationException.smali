.class final Landroidx/compose/ui/ModifierNodeDetachedCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Modifier.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const-string v0, "The Modifier.Node was detached"

    .line 41
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 46
    invoke-static {}, Landroidx/compose/ui/ModifierKt;->access$getEmptyStackTraceElements$p()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

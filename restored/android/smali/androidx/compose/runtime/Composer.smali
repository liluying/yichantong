.class public interface abstract Landroidx/compose/runtime/Composer;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Composer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/Composer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->$$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

    sput-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    return-void
.end method


# virtual methods
.method public abstract changed(Ljava/lang/Object;)Z
.end method

.method public abstract changedInstance(Ljava/lang/Object;)Z
.end method

.method public abstract collectParameterInformation()V
.end method

.method public abstract consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
.end method

.method public abstract endProvider()V
.end method

.method public abstract endProviders()V
.end method

.method public abstract endReplaceGroup()V
.end method

.method public abstract endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
.end method

.method public abstract getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
.end method

.method public abstract getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
.end method

.method public abstract getSkipping()Z
.end method

.method public abstract recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
.end method

.method public abstract rememberedValue()Ljava/lang/Object;
.end method

.method public abstract skipToGroupEnd()V
.end method

.method public abstract startProvider(Landroidx/compose/runtime/ProvidedValue;)V
.end method

.method public abstract startProviders([Landroidx/compose/runtime/ProvidedValue;)V
.end method

.method public abstract startReplaceGroup(I)V
.end method

.method public abstract startRestartGroup(I)Landroidx/compose/runtime/Composer;
.end method

.method public abstract updateRememberedValue(Ljava/lang/Object;)V
.end method

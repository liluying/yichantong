.class public interface abstract Landroidx/compose/runtime/PersistentCompositionLocalMap;
.super Ljava/lang/Object;
.source "CompositionLocalMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;
.implements Landroidx/compose/runtime/CompositionLocalMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;
    }
.end annotation


# virtual methods
.method public abstract builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;
.end method

.method public abstract putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
.end method

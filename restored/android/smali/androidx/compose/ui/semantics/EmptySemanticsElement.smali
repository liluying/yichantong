.class public final Landroidx/compose/ui/semantics/EmptySemanticsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SemanticsModifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field private final node:Landroidx/compose/ui/semantics/EmptySemanticsModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/compose/ui/semantics/EmptySemanticsElement;->node:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/EmptySemanticsElement;->create()Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroidx/compose/ui/semantics/EmptySemanticsModifier;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/compose/ui/semantics/EmptySemanticsElement;->node:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 59
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 49
    check-cast p1, Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/semantics/EmptySemanticsElement;->update(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V
    .locals 0

    .line 0
    return-void
.end method

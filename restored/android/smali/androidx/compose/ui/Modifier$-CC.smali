.class public abstract synthetic Landroidx/compose/ui/Modifier$-CC;
.super Ljava/lang/Object;
.source "Modifier.kt"


# direct methods
.method public static $default$then(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 131
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/compose/ui/CombinedModifier;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/CombinedModifier;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)V

    return-object v0
.end method

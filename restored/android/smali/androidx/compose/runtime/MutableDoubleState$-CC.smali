.class public abstract synthetic Landroidx/compose/runtime/MutableDoubleState$-CC;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"


# direct methods
.method public static $default$getValue(Landroidx/compose/runtime/MutableDoubleState;)Ljava/lang/Double;
    .locals 2

    .line 98
    invoke-interface {p0}, Landroidx/compose/runtime/MutableDoubleState;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$getValue(Landroidx/compose/runtime/MutableDoubleState;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-interface {p0}, Landroidx/compose/runtime/MutableDoubleState;->getValue()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static $default$setValue(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 0

    .line 99
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setDoubleValue(D)V

    return-void
.end method

.method public static bridge synthetic $default$setValue(Landroidx/compose/runtime/MutableDoubleState;Ljava/lang/Object;)V
    .locals 2

    .line 92
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableDoubleState;->setValue(D)V

    return-void
.end method

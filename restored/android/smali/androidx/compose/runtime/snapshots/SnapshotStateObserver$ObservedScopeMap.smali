.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObservedScopeMap"
.end annotation


# instance fields
.field private currentScope:Ljava/lang/Object;

.field private currentScopeReads:Landroidx/collection/MutableObjectIntMap;

.field private currentToken:I

.field private final dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

.field private deriveStateScopeCount:I

.field private final derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

.field private final invalidated:Landroidx/collection/MutableScatterSet;

.field private final onChanged:Lkotlin/jvm/functions/Function1;

.field private final recordedDerivedStateValues:Ljava/util/HashMap;

.field private final scopeToValues:Landroidx/collection/MutableScatterMap;

.field private final statesToReread:Landroidx/compose/runtime/collection/MutableVector;

.field private final valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    .line 378
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 383
    new-instance p1, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    .line 389
    new-instance p1, Landroidx/collection/MutableScatterMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 394
    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    .line 1188
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/runtime/DerivedState;

    invoke-direct {p1, v1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 399
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 406
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

    .line 427
    new-instance p1, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .line 432
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getDeriveStateScopeCount$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I
    .locals 0

    .line 361
    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return p0
.end method

.method public static final synthetic access$setDeriveStateScopeCount$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V
    .locals 0

    .line 361
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return-void
.end method

.method private final clearObsoleteStateReads(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 513
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 514
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-eqz v2, :cond_6

    .line 373
    iget-object v3, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 374
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 377
    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_5

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_4

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v16, v12, v14

    if-gez v16, :cond_2

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 845
    iget-object v13, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v13, v13, v12

    iget-object v14, v2, Landroidx/collection/ObjectIntMap;->values:[I

    aget v14, v14, v12

    if-eq v14, v1, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v15, p1

    if-eqz v14, :cond_1

    .line 517
    invoke-direct {v0, v15, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz v14, :cond_3

    .line 846
    invoke-virtual {v2, v12}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v15, p1

    :cond_3
    :goto_3
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v15, p1

    if-ne v9, v10, :cond_6

    goto :goto_4

    :cond_5
    move-object/from16 v15, p1

    :goto_4
    if-eq v6, v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private final recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 456
    iget v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    if-lez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v3, -0x1

    move-object/from16 v4, p4

    .line 461
    invoke-virtual {v4, v1, v2, v3}, Landroidx/collection/MutableObjectIntMap;->put(Ljava/lang/Object;II)I

    move-result v4

    .line 462
    instance-of v5, v1, Landroidx/compose/runtime/DerivedState;

    const/4 v6, 0x2

    if-eqz v5, :cond_6

    if-eq v4, v2, :cond_6

    .line 463
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v2

    .line 465
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState$Record;->getDependencies()Landroidx/collection/ObjectIntMap;

    move-result-object v2

    .line 468
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .line 470
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    .line 415
    iget-object v7, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 373
    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 374
    array-length v8, v2

    sub-int/2addr v8, v6

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    .line 377
    :goto_0
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v17, v13, v15

    if-eqz v17, :cond_4

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v20, v16, v18

    if-gez v20, :cond_2

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    .line 419
    aget-object v16, v7, v16

    const/16 p4, 0x2

    move-object/from16 v6, v16

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObject;

    .line 472
    instance-of v9, v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v9, :cond_1

    .line 473
    move-object v9, v6

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 51
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v3

    .line 473
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 475
    :cond_1
    invoke-virtual {v5, v6, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/16 p4, 0x2

    :goto_2
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/16 p4, 0x2

    if-ne v13, v14, :cond_5

    goto :goto_3

    :cond_4
    const/16 p4, 0x2

    :goto_3
    if-eq v10, v8, :cond_5

    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x2

    goto :goto_0

    :cond_5
    :goto_4
    const/4 v2, -0x1

    goto :goto_5

    :cond_6
    const/16 p4, 0x2

    goto :goto_4

    :goto_5
    if-ne v4, v2, :cond_8

    .line 480
    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_7

    .line 481
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 51
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v3

    .line 481
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 483
    :cond_7
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    move-object/from16 v3, p3

    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_6
    return-void
.end method

.method private final removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 552
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 553
    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 554
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    .line 555
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 563
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/ScopeMap;->clear()V

    .line 564
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 565
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/ScopeMap;->clear()V

    .line 566
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final clearScopeObservations(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 527
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_0

    goto :goto_2

    .line 401
    :cond_0
    iget-object v3, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 402
    iget-object v4, v2, Landroidx/collection/ObjectIntMap;->values:[I

    .line 373
    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 374
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 377
    :goto_0
    aget-wide v8, v2, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v14, v10, v12

    if-eqz v14, :cond_3

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v17, v13, v15

    if-gez v17, :cond_1

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 406
    aget-object v14, v3, v13

    aget v13, v4, v13

    .line 529
    invoke-direct {v0, v1, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_4

    :cond_3
    if-eq v7, v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final getOnChanged()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final hasScopeObservations()Z
    .locals 1

    .line 549
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/ScatterMap;->isNotEmpty()Z

    move-result v0

    return v0
.end method

.method public final notifyInvalidatedScopes()V
    .locals 18

    move-object/from16 v0, p0

    .line 648
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    .line 649
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    .line 268
    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v4, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 242
    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v14, v10, v12

    if-eqz v14, :cond_2

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v17, v13, v15

    if-gez v17, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 272
    aget-object v13, v3, v13

    invoke-interface {v2, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 650
    :cond_3
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    return-void
.end method

.method public final observe(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    .line 491
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 493
    iget v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 495
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 496
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableObjectIntMap;

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 497
    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 498
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 501
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

    .line 392
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .line 394
    :try_start_0
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4, p3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 397
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clearObsoleteStateReads(Ljava/lang/Object;)V

    .line 507
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 508
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 509
    iput v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    return-void

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 397
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p1
.end method

.method public final recordInvalidation(Ljava/util/Set;)Z
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 576
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    .line 577
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    .line 578
    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    .line 579
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    .line 49
    instance-of v6, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const-string v7, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    const/4 v13, 0x2

    const-wide/16 v16, 0x80

    const/16 v8, 0x8

    const/16 v18, 0x0

    if-eqz v6, :cond_20

    .line 50
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime_release()Landroidx/collection/ScatterSet;

    move-result-object v1

    .line 268
    iget-object v6, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    const/16 v19, 0x1

    .line 239
    array-length v9, v1

    sub-int/2addr v9, v13

    if-ltz v9, :cond_1f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v20, 0xff

    const/16 v22, 0x7

    const/16 v23, 0x2

    .line 242
    :goto_0
    aget-wide v12, v1, v10

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v14, v12

    shl-long v14, v14, v22

    and-long/2addr v14, v12

    and-long v14, v14, v24

    cmp-long v26, v14, v24

    if-eqz v26, :cond_1e

    sub-int v14, v10, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1d

    and-long v26, v12, v20

    cmp-long v28, v26, v16

    if-gez v28, :cond_1c

    shl-int/lit8 v26, v10, 0x3

    add-int v26, v26, v15

    const/16 v27, 0x8

    .line 272
    aget-object v8, v6, v26

    move-object/from16 v26, v1

    .line 582
    instance-of v1, v8, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v1, :cond_0

    .line 583
    move-object v1, v8

    check-cast v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    move-object/from16 v28, v4

    .line 51
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v4

    .line 583
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_11

    :cond_0
    move-object/from16 v28, v4

    .line 588
    :cond_1
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 77
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 79
    instance-of v4, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_e

    .line 81
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v4, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 p1, v4

    .line 239
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_15

    move-object/from16 v29, v1

    move-wide/from16 v30, v12

    const/4 v1, 0x0

    move v13, v11

    .line 242
    :goto_2
    aget-wide v11, v29, v1

    move/from16 v32, v9

    move/from16 v33, v10

    not-long v9, v11

    shl-long v9, v9, v22

    and-long/2addr v9, v11

    and-long v9, v9, v24

    cmp-long v34, v9, v24

    if-eqz v34, :cond_c

    sub-int v9, v1, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_b

    and-long v34, v11, v20

    cmp-long v36, v34, v16

    if-gez v36, :cond_a

    shl-int/lit8 v34, v1, 0x3

    add-int v34, v34, v10

    .line 272
    aget-object v34, p1, v34

    move-object/from16 v35, v6

    move-object/from16 v6, v34

    check-cast v6, Landroidx/compose/runtime/DerivedState;

    .line 591
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v34, v10

    .line 592
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 593
    invoke-interface {v6}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v36

    if-nez v36, :cond_2

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v36

    :cond_2
    move-wide/from16 v37, v11

    move-object/from16 v11, v36

    .line 597
    invoke-interface {v6}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v12

    .line 596
    invoke-interface {v11, v12, v10}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 77
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 79
    instance-of v10, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v10, :cond_8

    .line 81
    check-cast v6, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v10, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v6, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v11, v6

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_7

    move/from16 v39, v13

    move/from16 v36, v14

    const/4 v12, 0x0

    .line 242
    :goto_4
    aget-wide v13, v6, v12

    move-object/from16 v41, v6

    move-object/from16 v40, v7

    not-long v6, v13

    shl-long v6, v6, v22

    and-long/2addr v6, v13

    and-long v6, v6, v24

    cmp-long v42, v6, v24

    if-eqz v42, :cond_5

    sub-int v6, v12, v11

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_4

    and-long v42, v13, v20

    cmp-long v44, v42, v16

    if-gez v44, :cond_3

    shl-int/lit8 v39, v12, 0x3

    add-int v39, v39, v7

    move/from16 v42, v7

    .line 272
    aget-object v7, v10, v39

    .line 602
    invoke-virtual {v5, v7}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v39, 0x1

    goto :goto_6

    :cond_3
    move/from16 v42, v7

    :goto_6
    shr-long v13, v13, v27

    add-int/lit8 v7, v42, 0x1

    goto :goto_5

    :cond_4
    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    :cond_5
    if-eq v12, v11, :cond_6

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v40

    move-object/from16 v6, v41

    const/16 v27, 0x8

    goto :goto_4

    :cond_6
    move/from16 v13, v39

    goto :goto_7

    :cond_7
    move-object/from16 v40, v7

    goto :goto_8

    :cond_8
    move-object/from16 v40, v7

    move/from16 v36, v14

    invoke-virtual {v5, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v40, v7

    move/from16 v36, v14

    .line 607
    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :goto_7
    const/16 v7, 0x8

    goto :goto_9

    :cond_a
    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v34, v10

    move-wide/from16 v37, v11

    :goto_8
    move/from16 v36, v14

    goto :goto_7

    :goto_9
    shr-long v11, v37, v7

    add-int/lit8 v10, v34, 0x1

    move-object/from16 v6, v35

    move/from16 v14, v36

    move-object/from16 v7, v40

    const/16 v27, 0x8

    goto/16 :goto_3

    :cond_b
    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v36, v14

    const/16 v7, 0x8

    if-ne v9, v7, :cond_d

    goto :goto_a

    :cond_c
    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v36, v14

    :goto_a
    if-eq v1, v4, :cond_d

    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v32

    move/from16 v10, v33

    move-object/from16 v6, v35

    move/from16 v14, v36

    move-object/from16 v7, v40

    const/16 v27, 0x8

    goto/16 :goto_2

    :cond_d
    move v11, v13

    goto/16 :goto_d

    :cond_e
    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v32, v9

    move/from16 v33, v10

    move-wide/from16 v30, v12

    move/from16 v36, v14

    .line 85
    check-cast v1, Landroidx/compose/runtime/DerivedState;

    .line 592
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 593
    invoke-interface {v1}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v6

    if-nez v6, :cond_f

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v6

    .line 597
    :cond_f
    invoke-interface {v1}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v7

    .line 596
    invoke-interface {v6, v7, v4}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 77
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 79
    instance-of v4, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_13

    .line 81
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v4, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_16

    const/4 v7, 0x0

    .line 242
    :goto_b
    aget-wide v9, v1, v7

    not-long v12, v9

    shl-long v12, v12, v22

    and-long/2addr v12, v9

    and-long v12, v12, v24

    cmp-long v14, v12, v24

    if-eqz v14, :cond_12

    sub-int v12, v7, v6

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_11

    and-long v37, v9, v20

    cmp-long v14, v37, v16

    if-gez v14, :cond_10

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v13

    .line 272
    aget-object v11, v4, v11

    .line 602
    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_10
    const/16 v14, 0x8

    shr-long/2addr v9, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_11
    const/16 v14, 0x8

    if-ne v12, v14, :cond_16

    :cond_12
    if-eq v7, v6, :cond_16

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_d

    .line 607
    :cond_14
    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v32, v9

    move/from16 v33, v10

    move-wide/from16 v30, v12

    move/from16 v36, v14

    .line 77
    :cond_16
    :goto_d
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 79
    instance-of v4, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_1a

    .line 81
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v4, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_1b

    const/4 v7, 0x0

    .line 242
    :goto_e
    aget-wide v8, v1, v7

    not-long v12, v8

    shl-long v12, v12, v22

    and-long/2addr v12, v8

    and-long v12, v12, v24

    cmp-long v10, v12, v24

    if-eqz v10, :cond_19

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v10, :cond_18

    and-long v13, v8, v20

    cmp-long v29, v13, v16

    if-gez v29, :cond_17

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v12

    .line 272
    aget-object v11, v4, v11

    .line 613
    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_17
    const/16 v14, 0x8

    shr-long/2addr v8, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_18
    const/16 v14, 0x8

    if-ne v10, v14, :cond_1b

    :cond_19
    if-eq v7, v6, :cond_1b

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1a
    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_1b
    :goto_10
    const/16 v14, 0x8

    goto :goto_12

    :cond_1c
    move-object/from16 v26, v1

    move-object/from16 v28, v4

    :goto_11
    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v32, v9

    move/from16 v33, v10

    move-wide/from16 v30, v12

    move/from16 v36, v14

    goto :goto_10

    :goto_12
    shr-long v12, v30, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v26

    move-object/from16 v4, v28

    move/from16 v9, v32

    move/from16 v10, v33

    move-object/from16 v6, v35

    move/from16 v14, v36

    move-object/from16 v7, v40

    const/16 v8, 0x8

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v26, v1

    move-object/from16 v28, v4

    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move/from16 v32, v9

    move/from16 v33, v10

    move v8, v14

    const/16 v14, 0x8

    if-ne v8, v14, :cond_3c

    move/from16 v9, v32

    move/from16 v1, v33

    goto :goto_13

    :cond_1e
    move-object/from16 v26, v1

    move-object/from16 v28, v4

    move-object/from16 v35, v6

    move-object/from16 v40, v7

    move v1, v10

    :goto_13
    if-eq v1, v9, :cond_3c

    add-int/lit8 v10, v1, 0x1

    move-object/from16 v1, v26

    move-object/from16 v4, v28

    move-object/from16 v6, v35

    move-object/from16 v7, v40

    const/16 v8, 0x8

    goto/16 :goto_0

    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_23

    :cond_20
    move-object/from16 v28, v4

    move-object/from16 v40, v7

    const/16 v19, 0x1

    const-wide/16 v20, 0xff

    const/16 v22, 0x7

    const/16 v23, 0x2

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 53
    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v11, 0x0

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 582
    instance-of v6, v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v6, :cond_22

    .line 583
    move-object v6, v4

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 51
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v7

    .line 583
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v6

    if-nez v6, :cond_22

    move-object/from16 p1, v1

    move-object/from16 v29, v2

    :cond_21
    const/16 v14, 0x8

    goto/16 :goto_22

    .line 588
    :cond_22
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/ScopeMap;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 77
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 79
    instance-of v7, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_2e

    .line 81
    check-cast v6, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v7, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v6, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_35

    const/4 v9, 0x0

    .line 242
    :goto_15
    aget-wide v12, v6, v9

    not-long v14, v12

    shl-long v14, v14, v22

    and-long/2addr v14, v12

    and-long v14, v14, v24

    cmp-long v10, v14, v24

    if-eqz v10, :cond_2d

    sub-int v10, v9, v8

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v10, :cond_2c

    and-long v29, v12, v20

    cmp-long v15, v29, v16

    if-gez v15, :cond_2a

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    .line 272
    aget-object v15, v7, v15

    check-cast v15, Landroidx/compose/runtime/DerivedState;

    move-object/from16 p1, v1

    move-object/from16 v1, v40

    .line 591
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 593
    invoke-interface {v15}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v26

    if-nez v26, :cond_23

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v26

    :cond_23
    move-object/from16 v29, v2

    move-object/from16 v2, v26

    .line 597
    invoke-interface {v15}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v26

    move-object/from16 v30, v6

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v6

    .line 596
    invoke-interface {v2, v6, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 77
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 79
    instance-of v2, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_28

    .line 81
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_2b

    move-wide/from16 v31, v12

    const/4 v15, 0x0

    move v13, v11

    .line 242
    :goto_17
    aget-wide v11, v1, v15

    move-object/from16 v33, v1

    move-object/from16 v26, v2

    not-long v1, v11

    shl-long v1, v1, v22

    and-long/2addr v1, v11

    and-long v1, v1, v24

    cmp-long v34, v1, v24

    if-eqz v34, :cond_26

    sub-int v1, v15, v6

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_25

    and-long v34, v11, v20

    cmp-long v36, v34, v16

    if-gez v36, :cond_24

    shl-int/lit8 v13, v15, 0x3

    add-int/2addr v13, v2

    .line 272
    aget-object v13, v26, v13

    .line 602
    invoke-virtual {v5, v13}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_24
    move/from16 v27, v2

    const/16 v2, 0x8

    shr-long/2addr v11, v2

    add-int/lit8 v27, v27, 0x1

    move/from16 v2, v27

    goto :goto_18

    :cond_25
    const/16 v2, 0x8

    if-ne v1, v2, :cond_27

    :cond_26
    if-eq v15, v6, :cond_27

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v26

    move-object/from16 v1, v33

    goto :goto_17

    :cond_27
    move v11, v13

    goto :goto_19

    :cond_28
    move-wide/from16 v31, v12

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_19

    :cond_29
    move-wide/from16 v31, v12

    .line 607
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :goto_19
    const/16 v2, 0x8

    goto :goto_1a

    :cond_2a
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v6

    :cond_2b
    move-wide/from16 v31, v12

    goto :goto_19

    :goto_1a
    shr-long v12, v31, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v6, v30

    goto/16 :goto_16

    :cond_2c
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v6

    const/16 v2, 0x8

    if-ne v10, v2, :cond_36

    goto :goto_1b

    :cond_2d
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v6

    :goto_1b
    if-eq v9, v8, :cond_36

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v6, v30

    goto/16 :goto_15

    :cond_2e
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    .line 85
    check-cast v6, Landroidx/compose/runtime/DerivedState;

    .line 592
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 593
    invoke-interface {v6}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    if-nez v2, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    .line 597
    :cond_2f
    invoke-interface {v6}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v7

    .line 596
    invoke-interface {v2, v7, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 77
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 79
    instance-of v2, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_33

    .line 81
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_36

    const/4 v7, 0x0

    .line 242
    :goto_1c
    aget-wide v8, v1, v7

    not-long v12, v8

    shl-long v12, v12, v22

    and-long/2addr v12, v8

    and-long v12, v12, v24

    cmp-long v10, v12, v24

    if-eqz v10, :cond_32

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1d
    if-ge v12, v10, :cond_31

    and-long v13, v8, v20

    cmp-long v15, v13, v16

    if-gez v15, :cond_30

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v12

    .line 272
    aget-object v11, v2, v11

    .line 602
    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_30
    const/16 v14, 0x8

    shr-long/2addr v8, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    :cond_31
    const/16 v14, 0x8

    if-ne v10, v14, :cond_36

    :cond_32
    if-eq v7, v6, :cond_36

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_33
    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_1e

    .line 607
    :cond_34
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_35
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    .line 77
    :cond_36
    :goto_1e
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 79
    instance-of v2, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_3a

    .line 81
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_21

    const/4 v6, 0x0

    .line 242
    :goto_1f
    aget-wide v7, v1, v6

    not-long v9, v7

    shl-long v9, v9, v22

    and-long/2addr v9, v7

    and-long v9, v9, v24

    cmp-long v12, v9, v24

    if-eqz v12, :cond_39

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v9, :cond_38

    and-long v12, v7, v20

    cmp-long v14, v12, v16

    if-gez v14, :cond_37

    shl-int/lit8 v11, v6, 0x3

    add-int/2addr v11, v10

    .line 272
    aget-object v11, v2, v11

    .line 613
    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_37
    const/16 v14, 0x8

    shr-long/2addr v7, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_38
    const/16 v14, 0x8

    if-ne v9, v14, :cond_3b

    goto :goto_21

    :cond_39
    const/16 v14, 0x8

    :goto_21
    if-eq v6, v4, :cond_3b

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_3a
    const/16 v14, 0x8

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_3b
    :goto_22
    move-object/from16 v1, p1

    move-object/from16 v2, v29

    goto/16 :goto_14

    .line 618
    :cond_3c
    :goto_23
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 619
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    .line 461
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_3e

    .line 464
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    .line 466
    :goto_24
    aget-object v3, v1, v18

    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 620
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->rereadDerivedState(Landroidx/compose/runtime/DerivedState;)V

    add-int/lit8 v3, v18, 0x1

    if-lt v3, v2, :cond_3d

    goto :goto_25

    :cond_3d
    move/from16 v18, v3

    goto :goto_24

    .line 622
    :cond_3e
    :goto_25
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_3f
    return v11
.end method

.method public final recordRead(Ljava/lang/Object;)V
    .locals 6

    .line 435
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 438
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 440
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 441
    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 442
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, v0, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 436
    :cond_0
    invoke-direct {p0, p1, v1, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    return-void
.end method

.method public final removeScopeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 33

    move-object/from16 v0, p0

    .line 537
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 363
    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 364
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_9

    const/4 v5, 0x0

    .line 367
    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v13, v8, v11

    if-eqz v13, :cond_8

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_7

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v20, v16, v18

    if-gez v20, :cond_6

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    const/16 v16, 0x7

    .line 1049
    iget-object v10, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v10, v10, v4

    move-wide/from16 v20, v11

    iget-object v11, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v11, v11, v4

    check-cast v11, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v12, p1

    .line 538
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_3

    move-wide/from16 v23, v14

    .line 401
    iget-object v14, v11, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 402
    iget-object v15, v11, Landroidx/collection/ObjectIntMap;->values:[I

    .line 373
    iget-object v11, v11, Landroidx/collection/ObjectIntMap;->metadata:[J

    const/16 v25, 0x8

    .line 374
    array-length v9, v11

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_3

    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    const/4 v2, 0x0

    .line 377
    :goto_2
    aget-wide v6, v11, v2

    move-object/from16 v29, v11

    not-long v11, v6

    shl-long v11, v11, v16

    and-long/2addr v11, v6

    and-long v11, v11, v20

    cmp-long v30, v11, v20

    if-eqz v30, :cond_2

    sub-int v11, v2, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_1

    and-long v30, v6, v23

    cmp-long v32, v30, v18

    if-gez v32, :cond_0

    shl-int/lit8 v30, v2, 0x3

    add-int v30, v30, v12

    move-wide/from16 v31, v6

    .line 406
    aget-object v6, v14, v30

    aget v7, v15, v30

    .line 541
    invoke-direct {v0, v10, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    move-wide/from16 v31, v6

    :goto_4
    shr-long v6, v31, v25

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    const/16 v6, 0x8

    if-ne v11, v6, :cond_4

    :cond_2
    if-eq v2, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    move-object/from16 v11, v29

    const/16 v25, 0x8

    goto :goto_2

    :cond_3
    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    .line 538
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1050
    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_5
    :goto_5
    const/16 v6, 0x8

    goto :goto_6

    :cond_6
    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    move-wide/from16 v20, v11

    const/16 v16, 0x7

    goto :goto_5

    :goto_6
    shr-long v9, v27, v6

    add-int/lit8 v13, v13, 0x1

    move-wide v6, v9

    move-wide/from16 v11, v20

    move-object/from16 v2, v26

    const/16 v9, 0x8

    const/4 v10, 0x7

    goto/16 :goto_1

    :cond_7
    move-object/from16 v26, v2

    const/16 v6, 0x8

    if-ne v8, v6, :cond_9

    goto :goto_7

    :cond_8
    move-object/from16 v26, v2

    :goto_7
    if-eq v5, v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final rereadDerivedState(Landroidx/compose/runtime/DerivedState;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 629
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 630
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v4

    .line 632
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    .line 77
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 79
    instance-of v6, v5, Landroidx/collection/MutableScatterSet;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 81
    check-cast v5, Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v6, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v5, v5, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v9, v5

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_6

    const/4 v10, 0x0

    .line 242
    :goto_0
    aget-wide v11, v5, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v17, v13, v15

    if-eqz v17, :cond_3

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_2

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v20, v16, v18

    if-gez v20, :cond_1

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    const/16 v17, 0x8

    .line 272
    aget-object v14, v6, v16

    .line 637
    invoke-virtual {v3, v14}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v18, v5

    if-nez v16, :cond_0

    new-instance v5, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v5, v8, v2, v7}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 638
    invoke-virtual {v3, v14, v5}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_0
    move-object/from16 v5, v16

    .line 633
    :goto_2
    invoke-direct {v0, v1, v4, v14, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    goto :goto_3

    :cond_1
    move-object/from16 v18, v5

    const/16 v17, 0x8

    :goto_3
    shr-long v11, v11, v17

    add-int/2addr v15, v2

    move-object/from16 v5, v18

    const/16 v14, 0x8

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    const/16 v5, 0x8

    if-ne v13, v5, :cond_6

    goto :goto_4

    :cond_3
    move-object/from16 v18, v5

    :goto_4
    if-eq v10, v9, :cond_6

    add-int/2addr v10, v2

    move-object/from16 v5, v18

    goto :goto_0

    .line 637
    :cond_4
    invoke-virtual {v3, v5}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/collection/MutableObjectIntMap;

    if-nez v6, :cond_5

    new-instance v6, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v6, v8, v2, v7}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 638
    invoke-virtual {v3, v5, v6}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 633
    :cond_5
    invoke-direct {v0, v1, v4, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    :cond_6
    return-void
.end method

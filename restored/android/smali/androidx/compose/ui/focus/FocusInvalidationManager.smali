.class public final Landroidx/compose/ui/focus/FocusInvalidationManager;
.super Ljava/lang/Object;
.source "FocusInvalidationManager.kt"


# instance fields
.field private final focusEventNodes:Landroidx/collection/MutableScatterSet;

.field private final focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

.field private final focusTargetNodes:Landroidx/collection/MutableScatterSet;

.field private final focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

.field private final invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

.field private final onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

    .line 33
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    .line 35
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    .line 36
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    .line 37
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    .line 38
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final synthetic access$invalidateNodes(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateNodes()V

    return-void
.end method

.method private final invalidateNodes()V
    .locals 31

    move-object/from16 v0, p0

    .line 70
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x10

    .line 241
    const-string/jumbo v5, "visitChildren called on an unattached node"

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v15, 0x8

    const/16 v16, 0x1

    const/16 v17, 0x400

    const/4 v6, 0x0

    if-ltz v3, :cond_c

    const/4 v7, 0x0

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    .line 242
    :goto_0
    aget-wide v9, v1, v7

    const/4 v8, 0x7

    const/16 v22, 0x0

    not-long v11, v9

    shl-long/2addr v11, v8

    and-long/2addr v11, v9

    and-long/2addr v11, v13

    cmp-long v23, v11, v13

    if-eqz v23, :cond_b

    sub-int v11, v7, v3

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_a

    and-long v23, v9, v20

    cmp-long v25, v23, v18

    if-gez v25, :cond_8

    shl-int/lit8 v23, v7, 0x3

    add-int v23, v23, v12

    .line 272
    aget-object v23, v2, v23

    check-cast v23, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 73
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 94
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v24

    .line 303
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    move-object/from16 v8, v25

    const/16 v26, 0x7

    :goto_2
    if-eqz v8, :cond_1

    move-wide/from16 v27, v13

    .line 435
    instance-of v13, v8, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_0

    .line 436
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    iget-object v13, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v13, v8}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    .line 466
    :goto_3
    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-wide/from16 v13, v27

    goto :goto_2

    :cond_1
    move-wide/from16 v27, v13

    .line 137
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1188
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v13, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 139
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    if-nez v13, :cond_2

    .line 141
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-static {v8, v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    .line 143
    :cond_2
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 48
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 145
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 146
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v14

    and-int v14, v14, v24

    if-nez v14, :cond_4

    .line 147
    invoke-static {v8, v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_4

    :cond_4
    :goto_5
    if-eqz v13, :cond_3

    .line 153
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int v14, v14, v24

    if-eqz v14, :cond_6

    :goto_6
    if-eqz v13, :cond_3

    .line 435
    instance-of v14, v13, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_5

    .line 436
    check-cast v13, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    iget-object v14, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v14, v13}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 264
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    .line 466
    :goto_7
    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_6

    .line 157
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_5

    .line 137
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-wide/from16 v27, v13

    const/16 v26, 0x7

    :cond_9
    shr-long/2addr v9, v15

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v13, v27

    const/4 v8, 0x7

    goto/16 :goto_1

    :cond_a
    move-wide/from16 v27, v13

    const/16 v26, 0x7

    if-ne v11, v15, :cond_d

    goto :goto_8

    :cond_b
    move-wide/from16 v27, v13

    const/16 v26, 0x7

    :goto_8
    if-eq v7, v3, :cond_d

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v13, v27

    goto/16 :goto_0

    :cond_c
    move-wide/from16 v27, v13

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const/16 v22, 0x0

    const/16 v26, 0x7

    .line 79
    :cond_d
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 82
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_24

    const/4 v7, 0x0

    .line 242
    :goto_9
    aget-wide v8, v1, v7

    not-long v10, v8

    shl-long v10, v10, v26

    and-long/2addr v10, v8

    and-long v10, v10, v27

    cmp-long v12, v10, v27

    if-eqz v12, :cond_23

    sub-int v10, v7, v3

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v10, :cond_22

    and-long v12, v8, v20

    cmp-long v14, v12, v18

    if-gez v14, :cond_20

    shl-int/lit8 v12, v7, 0x3

    add-int/2addr v12, v11

    .line 272
    aget-object v12, v2, v12

    check-cast v12, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 88
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v13

    if-nez v13, :cond_e

    .line 89
    sget-object v13, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-interface {v12, v13}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    goto/16 :goto_13

    .line 94
    :cond_e
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v13

    .line 303
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v23, v22

    const/16 v24, 0x1

    const/16 v25, 0x0

    :goto_b
    if-eqz v14, :cond_12

    const/16 v29, 0x8

    .line 435
    instance-of v15, v14, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v15, :cond_11

    .line 436
    check-cast v14, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v23, :cond_f

    const/16 v25, 0x1

    .line 110
    :cond_f
    iget-object v15, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v15, v14}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 112
    iget-object v15, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v15, v14}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v24, 0x0

    :cond_10
    move-object/from16 v23, v14

    goto :goto_c

    .line 264
    :cond_11
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    .line 466
    :goto_c
    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    const/16 v15, 0x8

    goto :goto_b

    :cond_12
    const/16 v29, 0x8

    .line 137
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1188
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v14, v15, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 139
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    if-nez v15, :cond_13

    .line 141
    invoke-interface {v12}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_d

    .line 143
    :cond_13
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_14
    :goto_d
    invoke-virtual {v14}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 48
    invoke-virtual {v14}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 145
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .line 146
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v30

    and-int v30, v30, v13

    if-nez v30, :cond_15

    .line 147
    invoke-static {v14, v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_11

    :cond_15
    :goto_e
    if-eqz v15, :cond_1a

    .line 153
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v30

    and-int v30, v30, v13

    if-eqz v30, :cond_19

    :goto_f
    if-eqz v15, :cond_14

    .line 435
    instance-of v4, v15, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v4, :cond_18

    .line 436
    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v23, :cond_16

    const/16 v25, 0x1

    .line 110
    :cond_16
    iget-object v4, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v4, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 112
    iget-object v4, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v4, v15}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v24, 0x0

    :cond_17
    move-object/from16 v23, v15

    goto :goto_10

    .line 264
    :cond_18
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    .line 466
    :goto_10
    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    const/16 v4, 0x10

    goto :goto_f

    .line 157
    :cond_19
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    const/16 v4, 0x10

    goto :goto_e

    :cond_1a
    :goto_11
    const/16 v4, 0x10

    goto :goto_d

    :cond_1b
    if-eqz v24, :cond_21

    if-eqz v25, :cond_1c

    .line 120
    invoke-static {v12}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v4

    goto :goto_12

    :cond_1c
    if-eqz v23, :cond_1d

    .line 122
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    if-nez v4, :cond_1e

    :cond_1d
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 118
    :cond_1e
    :goto_12
    invoke-interface {v12, v4}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    goto :goto_14

    .line 137
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    :goto_13
    const/16 v29, 0x8

    :cond_21
    :goto_14
    shr-long v8, v8, v29

    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x10

    const/16 v15, 0x8

    goto/16 :goto_a

    :cond_22
    const/16 v4, 0x8

    if-ne v10, v4, :cond_24

    :cond_23
    if-eq v7, v3, :cond_24

    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x10

    const/16 v15, 0x8

    goto/16 :goto_9

    .line 127
    :cond_24
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 130
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    .line 268
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 239
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_29

    const/4 v4, 0x0

    .line 242
    :goto_15
    aget-wide v7, v1, v4

    not-long v9, v7

    shl-long v9, v9, v26

    and-long/2addr v9, v7

    and-long v9, v9, v27

    cmp-long v5, v9, v27

    if-eqz v5, :cond_28

    sub-int v5, v4, v3

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v29, 0x8

    rsub-int/lit8 v15, v5, 0x8

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v15, :cond_27

    and-long v9, v7, v20

    cmp-long v11, v9, v18

    if-gez v11, :cond_26

    shl-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v5

    .line 272
    aget-object v9, v2, v9

    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 133
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_26

    .line 135
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v10

    .line 136
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 137
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v11

    if-ne v10, v11, :cond_25

    .line 138
    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v9}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 140
    :cond_25
    invoke-static {v9}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_26
    const/16 v9, 0x8

    shr-long/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_27
    const/16 v9, 0x8

    if-ne v15, v9, :cond_29

    goto :goto_17

    :cond_28
    const/16 v9, 0x8

    :goto_17
    if-eq v4, v3, :cond_29

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 143
    :cond_29
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 145
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 147
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "Unprocessed FocusProperties nodes"

    .line 46
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 150
    :cond_2a
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Unprocessed FocusEvent nodes"

    .line 46
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 151
    :cond_2b
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "Unprocessed FocusTarget nodes"

    .line 46
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private final scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1}, Landroidx/collection/ScatterSet;->getSize()I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p2}, Landroidx/collection/ScatterSet;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p2}, Landroidx/collection/ScatterSet;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 63
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasPendingInvalidation()Z
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

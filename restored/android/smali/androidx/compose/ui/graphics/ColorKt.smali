.class public abstract Landroidx/compose/ui/graphics/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# direct methods
.method public static final Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 20

    move-object/from16 v0, p4

    .line 430
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->isSrgb()Z

    move-result v1

    const/16 v2, 0x10

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    cmpg-float v0, p3, v5

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move/from16 v0, p3

    :goto_0
    cmpl-float v1, v0, v4

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    cmpg-float v6, p0, v5

    if-gez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move/from16 v6, p0

    :goto_1
    cmpl-float v7, v6, v4

    if-lez v7, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_3
    mul-float v6, v6, v1

    add-float/2addr v6, v3

    float-to-int v6, v6

    shl-int/lit8 v2, v6, 0x10

    or-int/2addr v0, v2

    cmpg-float v2, p1, v5

    if-gez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move/from16 v2, p1

    :goto_2
    cmpl-float v6, v2, v4

    if-lez v6, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    mul-float v2, v2, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    cmpg-float v2, p2, v5

    if-gez v2, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v5, p2

    :goto_3
    cmpl-float v2, v5, v4

    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    mul-float v4, v4, v1

    add-float/2addr v4, v3

    float-to-int v1, v4

    or-int/2addr v0, v1

    int-to-long v0, v0

    .line 437
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0

    .line 440
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getComponentCount()I

    move-result v1

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v6, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_a

    .line 441
    const-string v1, "Color only works with ColorSpaces with 3 components"

    .line 37
    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 444
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getId$ui_graphics_release()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_c

    .line 446
    const-string v6, "Unknown color space, please use a color space in ColorSpaces"

    .line 37
    invoke-static {v6}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 449
    :cond_c
    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v6

    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v9

    cmpg-float v10, p0, v6

    if-gez v10, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v6, p0

    :goto_7
    cmpl-float v10, v6, v9

    if-lez v10, :cond_e

    goto :goto_8

    :cond_e
    move v9, v6

    .line 604
    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    ushr-int/lit8 v9, v6, 0x1f

    ushr-int/lit8 v10, v6, 0x17

    const/16 v11, 0xff

    and-int/2addr v10, v11

    const v12, 0x7fffff

    and-int v13, v6, v12

    const/high16 v14, 0x800000

    const/16 v15, -0xa

    const/16 v16, 0x31

    const/16 v17, 0x200

    const/16 v18, 0x10

    const/16 v2, 0x1f

    if-ne v10, v11, :cond_10

    if-eqz v13, :cond_f

    const/16 v6, 0x200

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    :goto_9
    const/16 v10, 0x1f

    goto :goto_c

    :cond_10
    add-int/lit8 v10, v10, -0x70

    if-lt v10, v2, :cond_11

    const/4 v6, 0x0

    const/16 v10, 0x31

    goto :goto_c

    :cond_11
    if-gtz v10, :cond_14

    if-lt v10, v15, :cond_13

    or-int v6, v13, v14

    rsub-int/lit8 v10, v10, 0x1

    shr-int/2addr v6, v10

    and-int/lit16 v10, v6, 0x1000

    if-eqz v10, :cond_12

    add-int/lit16 v6, v6, 0x2000

    :cond_12
    shr-int/lit8 v6, v6, 0xd

    :goto_a
    const/4 v10, 0x0

    goto :goto_c

    :cond_13
    const/4 v6, 0x0

    goto :goto_a

    :cond_14
    shr-int/lit8 v13, v13, 0xd

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_15

    shl-int/lit8 v6, v10, 0xa

    or-int/2addr v6, v13

    add-int/2addr v6, v7

    shl-int/lit8 v9, v9, 0xf

    or-int/2addr v6, v9

    :goto_b
    int-to-short v6, v6

    goto :goto_d

    :cond_15
    move v6, v13

    :goto_c
    shl-int/lit8 v9, v9, 0xf

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v9, v10

    or-int/2addr v6, v9

    goto :goto_b

    .line 450
    :goto_d
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v9

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v10

    cmpg-float v13, p1, v9

    if-gez v13, :cond_16

    goto :goto_e

    :cond_16
    move/from16 v9, p1

    :goto_e
    cmpl-float v13, v9, v10

    if-lez v13, :cond_17

    goto :goto_f

    :cond_17
    move v10, v9

    .line 604
    :goto_f
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    ushr-int/lit8 v10, v9, 0x1f

    ushr-int/lit8 v13, v9, 0x17

    and-int/2addr v13, v11

    and-int v19, v9, v12

    if-ne v13, v11, :cond_19

    if-eqz v19, :cond_18

    const/16 v9, 0x200

    goto :goto_10

    :cond_18
    const/4 v9, 0x0

    :goto_10
    const/16 v13, 0x1f

    goto :goto_13

    :cond_19
    add-int/lit8 v13, v13, -0x70

    if-lt v13, v2, :cond_1a

    const/4 v9, 0x0

    const/16 v13, 0x31

    goto :goto_13

    :cond_1a
    if-gtz v13, :cond_1d

    if-lt v13, v15, :cond_1c

    or-int v9, v19, v14

    rsub-int/lit8 v13, v13, 0x1

    shr-int/2addr v9, v13

    and-int/lit16 v13, v9, 0x1000

    if-eqz v13, :cond_1b

    add-int/lit16 v9, v9, 0x2000

    :cond_1b
    shr-int/lit8 v9, v9, 0xd

    :goto_11
    const/4 v13, 0x0

    goto :goto_13

    :cond_1c
    const/4 v9, 0x0

    goto :goto_11

    :cond_1d
    shr-int/lit8 v19, v19, 0xd

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_1e

    shl-int/lit8 v9, v13, 0xa

    or-int v9, v9, v19

    add-int/2addr v9, v7

    shl-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    :goto_12
    int-to-short v9, v9

    goto :goto_14

    :cond_1e
    move/from16 v9, v19

    :goto_13
    shl-int/lit8 v10, v10, 0xf

    shl-int/lit8 v13, v13, 0xa

    or-int/2addr v10, v13

    or-int/2addr v9, v10

    goto :goto_12

    :goto_14
    const/4 v10, 0x2

    .line 451
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMinValue(I)F

    move-result v10

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getMaxValue(I)F

    move-result v0

    cmpg-float v13, p2, v10

    if-gez v13, :cond_1f

    goto :goto_15

    :cond_1f
    move/from16 v10, p2

    :goto_15
    cmpl-float v13, v10, v0

    if-lez v13, :cond_20

    goto :goto_16

    :cond_20
    move v0, v10

    .line 604
    :goto_16
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    ushr-int/lit8 v10, v0, 0x1f

    ushr-int/lit8 v13, v0, 0x17

    and-int/2addr v13, v11

    and-int/2addr v12, v0

    if-ne v13, v11, :cond_22

    if-eqz v12, :cond_21

    const/16 v8, 0x200

    :cond_21
    move v0, v8

    const/16 v8, 0x1f

    goto :goto_18

    :cond_22
    add-int/lit8 v13, v13, -0x70

    if-lt v13, v2, :cond_23

    const/4 v0, 0x0

    const/16 v8, 0x31

    goto :goto_18

    :cond_23
    if-gtz v13, :cond_26

    if-lt v13, v15, :cond_25

    or-int v0, v12, v14

    rsub-int/lit8 v2, v13, 0x1

    shr-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_24

    add-int/lit16 v0, v0, 0x2000

    :cond_24
    shr-int/lit8 v0, v0, 0xd

    goto :goto_18

    :cond_25
    const/4 v0, 0x0

    goto :goto_18

    :cond_26
    shr-int/lit8 v8, v12, 0xd

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_27

    shl-int/lit8 v0, v13, 0xa

    or-int/2addr v0, v8

    add-int/2addr v0, v7

    shl-int/lit8 v2, v10, 0xf

    or-int/2addr v0, v2

    :goto_17
    int-to-short v0, v0

    goto :goto_19

    :cond_27
    move v0, v8

    move v8, v13

    :goto_18
    shl-int/lit8 v2, v10, 0xf

    shl-int/lit8 v7, v8, 0xa

    or-int/2addr v2, v7

    or-int/2addr v0, v2

    goto :goto_17

    :goto_19
    cmpg-float v2, p3, v5

    if-gez v2, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v5, p3

    :goto_1a
    cmpl-float v2, v5, v4

    if-lez v2, :cond_29

    goto :goto_1b

    :cond_29
    move v4, v5

    :goto_1b
    const v2, 0x447fc000    # 1023.0f

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    float-to-int v2, v4

    int-to-long v3, v6

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    int-to-long v7, v9

    and-long/2addr v7, v5

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    int-to-long v7, v0

    and-long/2addr v5, v7

    shl-long v5, v5, v18

    or-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x3ff

    and-long/2addr v5, v7

    const/4 v0, 0x6

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    int-to-long v0, v1

    const-wide/16 v5, 0x3f

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    .line 456
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    .line 454
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final Color(I)J
    .locals 2

    int-to-long v0, p0

    .line 518
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final Color(J)J
    .locals 1

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    .line 535
    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toArgb-8_81llA(J)I
    .locals 1

    .line 689
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

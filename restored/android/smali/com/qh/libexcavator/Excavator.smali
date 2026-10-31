.class public Lcom/qh/libexcavator/Excavator;
.super Ljava/lang/Object;
.source "Excavator.java"


# static fields
.field public static final ADJUST_HEIGHT_DEVICE_PITCH:I = 0x2

.field public static final ADJUST_HEIGHT_HA:I = 0x20

.field public static final ADJUST_HEIGHT_HEIGHT_VALID:I = 0x1

.field public static final ADJUST_HEIGHT_SENSOR_PITCH:I = 0x4

.field public static final ADJUST_HEIGHT_TOOL_FREE:I = 0x8

.field public static final ADJUST_HEIGHT_TOOL_ROTATE:I = 0x10

.field public static final BINARY_SIZE_MAX:I = 0x80

.field public static final MODE_1:I = 0x1

.field public static final MODE_2:I = 0x2

.field public static final MODE_3:I = 0x3

.field public static final SAMPLE_AMOUNT_MAX:I = 0x10

.field public static final TOOL_POINT_AMOUNT:I = 0x4


# instance fields
.field private final handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

.field private final lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iput-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    .line 64
    new-instance v1, Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    invoke-direct {v1}, Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;-><init>()V

    iput-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    .line 65
    invoke-interface {v0, v1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_init(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;)V

    .line 66
    invoke-interface {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_version()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qh/libexcavator/Excavator;->version:Ljava/lang/String;

    return-void
.end method

.method public static libraryVersion()Ljava/lang/String;
    .locals 1

    .line 256
    sget-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    invoke-interface {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static points(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;
    .locals 1

    .line 286
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p0

    check-cast p0, [Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    return-object p0
.end method

.method public static rtkSamples(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;
    .locals 1

    .line 276
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p0

    check-cast p0, [Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;

    return-object p0
.end method

.method public static samples(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;
    .locals 1

    .line 266
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p0

    check-cast p0, [Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    return-object p0
.end method

.method public static toolCheck(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I
    .locals 1

    .line 210
    sget-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    invoke-interface {v0, p0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_tool_check(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I

    move-result p0

    return p0
.end method

.method public static toolFromBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[B)I
    .locals 2

    .line 232
    sget-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    array-length v1, p1

    invoke-interface {v0, p0, p1, v1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_tool_from_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[BI)I

    move-result p0

    return p0
.end method

.method public static toolFromDistance(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;DDDDD)I
    .locals 12

    .line 247
    sget-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-interface/range {v0 .. v11}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_tool_from_distance(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;DDDDD)I

    move-result p0

    return p0
.end method

.method public static toolToBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[B)I
    .locals 2

    .line 221
    sget-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    array-length v1, p1

    invoke-interface {v0, p0, p1, v1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_tool_to_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[BI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public adjustHABVertical(Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    invoke-interface {v0, v1, p1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_adjust_hab_vertical(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I

    move-result p1

    return p1
.end method

.method public adjustHeight(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    array-length v6, p4

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_adjust_height(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;I)I

    move-result p1

    return p1
.end method

.method public adjustRtk([Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;)I
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_adjust_rtk(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;I)I

    move-result p1

    return p1
.end method

.method public fromBinary([B)I
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_from_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[BI)I

    move-result p1

    return p1
.end method

.method public getHeightStdev(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)D
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    array-length v6, p4

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_get_height_stdev(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;I)D

    move-result-wide p1

    return-wide p1
.end method

.method public getMode()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    invoke-interface {v0, v1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_get_mode(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;)I

    move-result v0

    return v0
.end method

.method public getRtkStdev([Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;)I
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_get_rtk_stdev(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;I[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;)I

    move-result p1

    return p1
.end method

.method public getTool()Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 3

    .line 198
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v2, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    invoke-interface {v1, v2, v0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_get_tool(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->version:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    return-object v0
.end method

.method public raw()Lcom/qh/libexcavator/nativelib/LibExcavator;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    return-object v0
.end method

.method public setTool(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    invoke-interface {v0, v1, p1}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_set_tool(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I

    move-result p1

    return p1
.end method

.method public toBinary([B)I
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v1, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_to_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[BI)I

    move-result p1

    return p1
.end method

.method public toBinary()[B
    .locals 4

    const/16 v0, 0x80

    .line 152
    new-array v1, v0, [B

    .line 153
    iget-object v2, p0, Lcom/qh/libexcavator/Excavator;->lib:Lcom/qh/libexcavator/nativelib/LibExcavator;

    iget-object v3, p0, Lcom/qh/libexcavator/Excavator;->handle:Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;

    invoke-interface {v2, v3, v1, v0}, Lcom/qh/libexcavator/nativelib/LibExcavator;->libexcavator_to_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[BI)I

    move-result v2

    if-lez v2, :cond_0

    if-gt v2, v0, :cond_0

    .line 157
    new-array v0, v2, [B

    const/4 v3, 0x0

    .line 158
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "libexcavator_to_binary failed, returned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

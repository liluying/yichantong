.class public interface abstract Lcom/qh/libexcavator/nativelib/LibExcavator;
.super Ljava/lang/Object;
.source "LibExcavator.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Mode11Cali;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;,
        Lcom/qh/libexcavator/nativelib/LibExcavator$Point;
    }
.end annotation


# static fields
.field public static final ADJUST_HEIGHT_DEVICE_PITCH:I = 0x2

.field public static final ADJUST_HEIGHT_HA:I = 0x20

.field public static final ADJUST_HEIGHT_HEIGHT_VALID:I = 0x1

.field public static final ADJUST_HEIGHT_SENSOR_PITCH:I = 0x4

.field public static final ADJUST_HEIGHT_TOOL_FREE:I = 0x8

.field public static final ADJUST_HEIGHT_TOOL_ROTATE:I = 0x10

.field public static final BINARY_SIZE_MAX:I = 0x80

.field public static final HANDLE_LONGS:I = 0x80

.field public static final INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

.field public static final MODE_1:I = 0x1

.field public static final MODE_2:I = 0x2

.field public static final MODE_3:I = 0x3

.field public static final SAMPLE_AMOUNT_MAX:I = 0x10

.field public static final TOOL_POINT_AMOUNT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 496
    const-string v0, "excavator"

    const-class v1, Lcom/qh/libexcavator/nativelib/LibExcavator;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/qh/libexcavator/nativelib/LibExcavator;

    sput-object v0, Lcom/qh/libexcavator/nativelib/LibExcavator;->INSTANCE:Lcom/qh/libexcavator/nativelib/LibExcavator;

    return-void
.end method


# virtual methods
.method public abstract libexcavator_adjust_hab_vertical(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I
.end method

.method public abstract libexcavator_adjust_height(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;I)I
.end method

.method public abstract libexcavator_adjust_rtk(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;I)I
.end method

.method public abstract libexcavator_cali_mode_1_0(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode1Cali;)I
.end method

.method public abstract libexcavator_cali_mode_1_1(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode11Cali;)D
.end method

.method public abstract libexcavator_cali_mode_2_0(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode2Cali;)I
.end method

.method public abstract libexcavator_cali_mode_2_1(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode21Cali;)I
.end method

.method public abstract libexcavator_cali_mode_3_0(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Mode3Cali;)I
.end method

.method public abstract libexcavator_from_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[BI)I
.end method

.method public abstract libexcavator_get_height_stdev(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;I)D
.end method

.method public abstract libexcavator_get_mode(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;)I
.end method

.method public abstract libexcavator_get_rtk_stdev(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[Lcom/qh/libexcavator/nativelib/LibExcavator$AdjustRtkSample;I[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;)I
.end method

.method public abstract libexcavator_get_tool(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I
.end method

.method public abstract libexcavator_init(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;)V
.end method

.method public abstract libexcavator_set_tool(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I
.end method

.method public abstract libexcavator_to_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$LibexcavatorT;[BI)I
.end method

.method public abstract libexcavator_tool_check(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I
.end method

.method public abstract libexcavator_tool_from_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[BI)I
.end method

.method public abstract libexcavator_tool_from_distance(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;DDDDD)I
.end method

.method public abstract libexcavator_tool_to_binary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[BI)I
.end method

.method public abstract libexcavator_version()Ljava/lang/String;
.end method

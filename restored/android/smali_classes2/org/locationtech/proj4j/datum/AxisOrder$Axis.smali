.class public abstract enum Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
.super Ljava/lang/Enum;
.source "AxisOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/datum/AxisOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Axis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/locationtech/proj4j/datum/AxisOrder$Axis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field public static final enum Down:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field public static final enum Easting:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field public static final enum Northing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field public static final enum Southing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field public static final enum Up:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

.field public static final enum Westing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 24
    new-instance v0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$1;

    const-string v1, "Easting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Easting:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 32
    new-instance v1, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$2;

    const-string v3, "Westing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Westing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 40
    new-instance v3, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$3;

    const-string v5, "Northing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Northing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 48
    new-instance v5, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$4;

    const-string v7, "Southing"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Southing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 56
    new-instance v7, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$5;

    const-string v9, "Up"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Up:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    .line 64
    new-instance v9, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$6;

    const-string v11, "Down"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Down:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    const/4 v11, 0x6

    .line 23
    new-array v11, v11, [Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->$VALUES:[Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/locationtech/proj4j/datum/AxisOrder$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromChar(C)Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_5

    const/16 v0, 0x65

    if-eq p0, v0, :cond_4

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x73

    if-eq p0, v0, :cond_2

    const/16 v0, 0x75

    if-eq p0, v0, :cond_1

    const/16 v0, 0x77

    if-ne p0, v0, :cond_0

    .line 78
    sget-object p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Westing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 77
    :cond_1
    sget-object p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Up:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0

    .line 79
    :cond_2
    sget-object p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Southing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0

    .line 76
    :cond_3
    sget-object p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Northing:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0

    .line 75
    :cond_4
    sget-object p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Easting:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0

    .line 80
    :cond_5
    sget-object p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->Down:Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
    .locals 1

    .line 23
    const-class v0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object p0
.end method

.method public static values()[Lorg/locationtech/proj4j/datum/AxisOrder$Axis;
    .locals 1

    .line 23
    sget-object v0, Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->$VALUES:[Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    invoke-virtual {v0}, [Lorg/locationtech/proj4j/datum/AxisOrder$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/locationtech/proj4j/datum/AxisOrder$Axis;

    return-object v0
.end method


# virtual methods
.method public abstract fromENU(Lorg/locationtech/proj4j/ProjCoordinate;)D
.end method

.method public abstract toENU(DLorg/locationtech/proj4j/ProjCoordinate;)V
.end method

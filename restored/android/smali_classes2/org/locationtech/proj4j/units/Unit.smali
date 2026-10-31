.class public Lorg/locationtech/proj4j/units/Unit;
.super Ljava/lang/Object;
.source "Unit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ANGLE_UNIT:I = 0x0

.field public static final AREA_UNIT:I = 0x2

.field public static final LENGTH_UNIT:I = 0x1

.field public static final VOLUME_UNIT:I = 0x3

.field public static final format:Ljava/text/NumberFormat;

.field static final serialVersionUID:J = -0x5d0cc8fa7e0928e4L


# instance fields
.field public abbreviation:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public plural:Ljava/lang/String;

.field public value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    .line 38
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/locationtech/proj4j/units/Unit;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/locationtech/proj4j/units/Unit;->plural:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lorg/locationtech/proj4j/units/Unit;->abbreviation:Ljava/lang/String;

    .line 46
    iput-wide p4, p0, Lorg/locationtech/proj4j/units/Unit;->value:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 91
    instance-of v0, p1, Lorg/locationtech/proj4j/units/Unit;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lorg/locationtech/proj4j/units/Unit;

    iget-object v0, p1, Lorg/locationtech/proj4j/units/Unit;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/locationtech/proj4j/units/Unit;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lorg/locationtech/proj4j/units/Unit;->value:D

    iget-wide v4, p0, Lorg/locationtech/proj4j/units/Unit;->value:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public format(D)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/locationtech/proj4j/units/Unit;->abbreviation:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(DD)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 83
    invoke-virtual/range {v0 .. v5}, Lorg/locationtech/proj4j/units/Unit;->format(DDZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(DDZ)Ljava/lang/String;
    .locals 2

    .line 77
    const-string v0, "/"

    if-eqz p5, :cond_0

    .line 78
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/locationtech/proj4j/units/Unit;->abbreviation:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(DZ)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/locationtech/proj4j/units/Unit;->abbreviation:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    sget-object p3, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromBase(D)D
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/locationtech/proj4j/units/Unit;->value:D

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public hashCode()I
    .locals 5

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/proj4j/units/Unit;->name:Ljava/lang/String;

    iget-wide v2, p0, Lorg/locationtech/proj4j/units/Unit;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)D
    .locals 2

    .line 59
    :try_start_0
    sget-object v0, Lorg/locationtech/proj4j/units/Unit;->format:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBase(D)D
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/locationtech/proj4j/units/Unit;->value:D

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/locationtech/proj4j/units/Unit;->plural:Ljava/lang/String;

    return-object v0
.end method

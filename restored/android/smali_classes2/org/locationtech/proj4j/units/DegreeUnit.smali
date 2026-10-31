.class public Lorg/locationtech/proj4j/units/DegreeUnit;
.super Lorg/locationtech/proj4j/units/Unit;
.source "DegreeUnit.java"


# static fields
.field private static format:Lorg/locationtech/proj4j/units/AngleFormat; = null

.field static final serialVersionUID:J = -0x2c9601feee2d2ccaL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lorg/locationtech/proj4j/units/AngleFormat;

    const-string v1, "DdM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/locationtech/proj4j/units/AngleFormat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 27
    const-string v3, "deg"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v1, "degree"

    const-string v2, "degrees"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/proj4j/units/Unit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public format(D)Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

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

.method public format(DDZ)Ljava/lang/String;
    .locals 2

    .line 50
    const-string v0, "/"

    if-eqz p5, :cond_0

    .line 51
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    invoke-virtual {p1, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/locationtech/proj4j/units/Unit;->abbreviation:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    invoke-virtual {p1, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(DZ)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

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

    .line 46
    :cond_0
    sget-object p3, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)D
    .locals 2

    .line 32
    :try_start_0
    sget-object v0, Lorg/locationtech/proj4j/units/DegreeUnit;->format:Lorg/locationtech/proj4j/units/AngleFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

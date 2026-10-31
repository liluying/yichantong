.class public Lcom/qianhe/yct/bean/CoordSystemEntity;
.super Ljava/lang/Object;
.source "CoordSystemEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:D

.field public az:D

.field public country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field public fe:D

.field public fn:D

.field public invf:D

.field public iso:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iso"
    .end annotation
.end field

.field public k0:D

.field public lat0:D

.field public latc:D

.field public lon0:D

.field public lonc:D

.field public lps:D

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public projection:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field

.field public s1:D

.field public s2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public centralMeridian()D
    .locals 5

    .line 64
    iget-wide v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->lon0:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->lonc:D

    return-wide v0
.end method

.method public displayName()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->country:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->name:Ljava/lang/String;

    return-object v0

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->country:Ljava/lang/String;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public flattening()D
    .locals 5

    .line 59
    iget-wide v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->invf:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public zoneWidthDegrees()I
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 73
    :goto_0
    const-string/jumbo v1, "utm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_4

    const-string v1, "6-degree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "6 degree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "6\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 76
    :cond_1
    const-string v1, "3-degree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_3

    const-string v1, "3 degree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    iget-wide v0, p0, Lcom/qianhe/yct/bean/CoordSystemEntity;->k0:D

    const-wide v4, 0x3feffcb923a29c78L    # 0.9996

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v0, v4

    if-gez v6, :cond_3

    return v2

    :cond_3
    :goto_1
    return v3

    :cond_4
    :goto_2
    return v2
.end method

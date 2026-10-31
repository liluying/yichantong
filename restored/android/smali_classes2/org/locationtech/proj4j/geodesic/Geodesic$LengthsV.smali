.class Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;
.super Ljava/lang/Object;
.source "Geodesic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/geodesic/Geodesic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LengthsV"
.end annotation


# instance fields
.field private M12:D

.field private M21:D

.field private m0:D

.field private m12b:D

.field private s12b:D

.field final synthetic this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;


# direct methods
.method private constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V
    .locals 2

    .line 1255
    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1256
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->M21:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->M12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->m0:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->m12b:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->s12b:D

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V
    .locals 0

    .line 1253
    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D
    .locals 2

    .line 1253
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->m0:D

    return-wide v0
.end method

.method static synthetic access$2902(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D
    .locals 0

    .line 1253
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->m0:D

    return-wide p1
.end method

.method static synthetic access$300(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D
    .locals 2

    .line 1253
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->s12b:D

    return-wide v0
.end method

.method static synthetic access$302(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D
    .locals 0

    .line 1253
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->s12b:D

    return-wide p1
.end method

.method static synthetic access$400(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D
    .locals 2

    .line 1253
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->m12b:D

    return-wide v0
.end method

.method static synthetic access$402(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D
    .locals 0

    .line 1253
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->m12b:D

    return-wide p1
.end method

.method static synthetic access$500(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D
    .locals 2

    .line 1253
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->M12:D

    return-wide v0
.end method

.method static synthetic access$502(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D
    .locals 0

    .line 1253
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->M12:D

    return-wide p1
.end method

.method static synthetic access$600(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;)D
    .locals 2

    .line 1253
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->M21:D

    return-wide v0
.end method

.method static synthetic access$602(Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;D)D
    .locals 0

    .line 1253
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$LengthsV;->M21:D

    return-wide p1
.end method

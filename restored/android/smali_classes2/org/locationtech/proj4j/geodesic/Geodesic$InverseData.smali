.class Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;
.super Ljava/lang/Object;
.source "Geodesic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/geodesic/Geodesic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InverseData"
.end annotation


# instance fields
.field private calp1:D

.field private calp2:D

.field private g:Lorg/locationtech/proj4j/geodesic/GeodesicData;

.field private salp1:D

.field private salp2:D

.field final synthetic this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;


# direct methods
.method private constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V
    .locals 2

    .line 625
    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    new-instance p1, Lorg/locationtech/proj4j/geodesic/GeodesicData;

    invoke-direct {p1}, Lorg/locationtech/proj4j/geodesic/GeodesicData;-><init>()V

    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->g:Lorg/locationtech/proj4j/geodesic/GeodesicData;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 627
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->calp2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->salp2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->calp1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->salp1:D

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V

    return-void
.end method

.method static synthetic access$100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)Lorg/locationtech/proj4j/geodesic/GeodesicData;
    .locals 0

    .line 622
    iget-object p0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->g:Lorg/locationtech/proj4j/geodesic/GeodesicData;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D
    .locals 2

    .line 622
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->salp1:D

    return-wide v0
.end method

.method static synthetic access$2502(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D
    .locals 0

    .line 622
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->salp1:D

    return-wide p1
.end method

.method static synthetic access$2600(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D
    .locals 2

    .line 622
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->calp1:D

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D
    .locals 0

    .line 622
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->calp1:D

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D
    .locals 2

    .line 622
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->salp2:D

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D
    .locals 0

    .line 622
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->salp2:D

    return-wide p1
.end method

.method static synthetic access$2800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;)D
    .locals 2

    .line 622
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->calp2:D

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;D)D
    .locals 0

    .line 622
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseData;->calp2:D

    return-wide p1
.end method

.class Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;
.super Ljava/lang/Object;
.source "Geodesic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/geodesic/Geodesic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InverseStartV"
.end annotation


# instance fields
.field private calp1:D

.field private calp2:D

.field private dnm:D

.field private salp1:D

.field private salp2:D

.field private sig12:D

.field final synthetic this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;


# direct methods
.method private constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V
    .locals 2

    .line 1379
    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1380
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->dnm:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->calp2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->salp2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->calp1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->salp1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->sig12:D

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V
    .locals 0

    .line 1373
    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D
    .locals 2

    .line 1373
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->salp2:D

    return-wide v0
.end method

.method static synthetic access$1002(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D
    .locals 0

    .line 1373
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->salp2:D

    return-wide p1
.end method

.method static synthetic access$1100(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D
    .locals 2

    .line 1373
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->calp2:D

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D
    .locals 0

    .line 1373
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->calp2:D

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D
    .locals 2

    .line 1373
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->dnm:D

    return-wide v0
.end method

.method static synthetic access$1202(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D
    .locals 0

    .line 1373
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->dnm:D

    return-wide p1
.end method

.method static synthetic access$700(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D
    .locals 2

    .line 1373
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->sig12:D

    return-wide v0
.end method

.method static synthetic access$702(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D
    .locals 0

    .line 1373
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->sig12:D

    return-wide p1
.end method

.method static synthetic access$800(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D
    .locals 2

    .line 1373
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->salp1:D

    return-wide v0
.end method

.method static synthetic access$802(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D
    .locals 0

    .line 1373
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->salp1:D

    return-wide p1
.end method

.method static synthetic access$900(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;)D
    .locals 2

    .line 1373
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->calp1:D

    return-wide v0
.end method

.method static synthetic access$902(Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;D)D
    .locals 0

    .line 1373
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$InverseStartV;->calp1:D

    return-wide p1
.end method

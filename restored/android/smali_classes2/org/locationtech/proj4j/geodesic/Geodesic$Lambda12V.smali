.class Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;
.super Ljava/lang/Object;
.source "Geodesic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/proj4j/geodesic/Geodesic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Lambda12V"
.end annotation


# instance fields
.field private calp2:D

.field private csig1:D

.field private csig2:D

.field private dlam12:D

.field private domg12:D

.field private eps:D

.field private lam12:D

.field private salp2:D

.field private sig12:D

.field private ssig1:D

.field private ssig2:D

.field final synthetic this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;


# direct methods
.method private constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V
    .locals 2

    .line 1543
    iput-object p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->this$0:Lorg/locationtech/proj4j/geodesic/Geodesic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1544
    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->dlam12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->domg12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->eps:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->csig2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->ssig2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->csig1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->ssig1:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->sig12:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->calp2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->salp2:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->lam12:D

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/proj4j/geodesic/Geodesic;Lorg/locationtech/proj4j/geodesic/Geodesic$1;)V
    .locals 0

    .line 1540
    invoke-direct {p0, p1}, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;-><init>(Lorg/locationtech/proj4j/geodesic/Geodesic;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->lam12:D

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->lam12:D

    return-wide p1
.end method

.method static synthetic access$1500(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->salp2:D

    return-wide v0
.end method

.method static synthetic access$1502(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->salp2:D

    return-wide p1
.end method

.method static synthetic access$1600(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->calp2:D

    return-wide v0
.end method

.method static synthetic access$1602(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->calp2:D

    return-wide p1
.end method

.method static synthetic access$1700(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->sig12:D

    return-wide v0
.end method

.method static synthetic access$1702(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->sig12:D

    return-wide p1
.end method

.method static synthetic access$1800(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->ssig1:D

    return-wide v0
.end method

.method static synthetic access$1802(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->ssig1:D

    return-wide p1
.end method

.method static synthetic access$1900(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->csig1:D

    return-wide v0
.end method

.method static synthetic access$1902(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->csig1:D

    return-wide p1
.end method

.method static synthetic access$2000(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->ssig2:D

    return-wide v0
.end method

.method static synthetic access$2002(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->ssig2:D

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->csig2:D

    return-wide v0
.end method

.method static synthetic access$2102(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->csig2:D

    return-wide p1
.end method

.method static synthetic access$2200(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->eps:D

    return-wide v0
.end method

.method static synthetic access$2202(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->eps:D

    return-wide p1
.end method

.method static synthetic access$2300(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->domg12:D

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->domg12:D

    return-wide p1
.end method

.method static synthetic access$2400(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;)D
    .locals 2

    .line 1540
    iget-wide v0, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->dlam12:D

    return-wide v0
.end method

.method static synthetic access$2402(Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;D)D
    .locals 0

    .line 1540
    iput-wide p1, p0, Lorg/locationtech/proj4j/geodesic/Geodesic$Lambda12V;->dlam12:D

    return-wide p1
.end method

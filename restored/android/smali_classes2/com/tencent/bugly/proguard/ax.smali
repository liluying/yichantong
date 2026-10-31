.class public final Lcom/tencent/bugly/proguard/ax;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ax;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ax;->b:Ljava/util/Map;

    const-wide/16 v1, -0x1

    .line 18
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/ax;->c:J

    .line 19
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ax;->d:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ax;->e:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ax;->f:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ax;->g:Ljava/lang/String;

    return-void
.end method

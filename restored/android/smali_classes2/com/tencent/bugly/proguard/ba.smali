.class public final Lcom/tencent/bugly/proguard/ba;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field c:Ljava/lang/String;

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ba;->a:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ba;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ba;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1033
    :goto_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ba;->c:Ljava/lang/String;

    .line 1069
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/ba;->b:J

    .line 1114
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ba;->e:Z

    return-void
.end method

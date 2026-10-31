.class public final Lcom/tencent/bugly/proguard/ag$c;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:Z

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ag$c;->a:Ljava/lang/String;

    .line 292
    iput-object p2, p0, Lcom/tencent/bugly/proguard/ag$c;->b:Ljava/lang/String;

    .line 293
    iput-wide p3, p0, Lcom/tencent/bugly/proguard/ag$c;->c:J

    .line 294
    iput-boolean p5, p0, Lcom/tencent/bugly/proguard/ag$c;->d:Z

    .line 295
    iput-wide p6, p0, Lcom/tencent/bugly/proguard/ag$c;->e:J

    .line 296
    iput-object p8, p0, Lcom/tencent/bugly/proguard/ag$c;->f:Ljava/lang/String;

    .line 297
    iput-object p9, p0, Lcom/tencent/bugly/proguard/ag$c;->g:Ljava/lang/String;

    return-void
.end method

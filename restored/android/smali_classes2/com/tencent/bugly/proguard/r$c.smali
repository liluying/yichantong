.class final Lcom/tencent/bugly/proguard/r$c;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/proguard/r;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/r;J)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r$c;->a:Lcom/tencent/bugly/proguard/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/r$c;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$c;->a:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->b()V

    .line 515
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$c;->a:Lcom/tencent/bugly/proguard/r;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/r$c;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/r;->a(J)V

    return-void
.end method

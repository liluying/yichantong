.class final Lcom/tencent/bugly/proguard/as$6;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/as;->a(Ljava/util/List;JZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcom/tencent/bugly/proguard/as;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/as;JLjava/util/List;Z)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/tencent/bugly/proguard/as$6;->d:Lcom/tencent/bugly/proguard/as;

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/as$6;->a:J

    iput-object p4, p0, Lcom/tencent/bugly/proguard/as$6;->b:Ljava/util/List;

    iput-boolean p5, p0, Lcom/tencent/bugly/proguard/as$6;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 10

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/as$6;->a:J

    sub-long v6, v0, v2

    .line 737
    iget-object v4, p0, Lcom/tencent/bugly/proguard/as$6;->b:Ljava/util/List;

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/as$6;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "realtime"

    :goto_0
    move v5, p1

    move-object v9, p2

    move-object v8, v0

    goto :goto_1

    :cond_0
    const-string v0, "cache"

    goto :goto_0

    :goto_1
    invoke-static/range {v4 .. v9}, Lcom/tencent/bugly/proguard/as;->a(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object p1, p0, Lcom/tencent/bugly/proguard/as$6;->b:Ljava/util/List;

    invoke-static {v5, p1}, Lcom/tencent/bugly/proguard/as;->a(ZLjava/util/List;)V

    return-void
.end method

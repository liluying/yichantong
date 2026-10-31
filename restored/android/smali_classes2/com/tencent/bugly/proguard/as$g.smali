.class final Lcom/tencent/bugly/proguard/as$g;
.super Lcom/tencent/bugly/proguard/as$a;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2077
    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/as$a;-><init>(IB)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 2074
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/as$g;-><init>()V

    return-void
.end method

.class abstract Lcom/tencent/bugly/proguard/as$a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1975
    iput p1, p0, Lcom/tencent/bugly/proguard/as$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 1967
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/as$a;-><init>(I)V

    return-void
.end method

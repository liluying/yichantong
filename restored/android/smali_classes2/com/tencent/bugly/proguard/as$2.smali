.class final Lcom/tencent/bugly/proguard/as$2;
.super Ljava/util/ArrayList;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/tencent/bugly/proguard/as$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v0, Lcom/tencent/bugly/proguard/as$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$b;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/tencent/bugly/proguard/as$c;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$c;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/tencent/bugly/proguard/as$d;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$d;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/tencent/bugly/proguard/as$e;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$e;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/tencent/bugly/proguard/as$h;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$h;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/tencent/bugly/proguard/as$i;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$i;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/tencent/bugly/proguard/as$f;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$f;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Lcom/tencent/bugly/proguard/as$g;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$g;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

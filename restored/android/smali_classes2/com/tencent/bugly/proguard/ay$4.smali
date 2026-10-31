.class final Lcom/tencent/bugly/proguard/ay$4;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ay;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/proguard/ay;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ay;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ay$4;->a:Lcom/tencent/bugly/proguard/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay$4;->a:Lcom/tencent/bugly/proguard/ay;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;)V

    return-void
.end method

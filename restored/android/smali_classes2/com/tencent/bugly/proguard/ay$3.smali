.class final Lcom/tencent/bugly/proguard/ay$3;
.super Landroid/os/FileObserver;
.source "BUGLY"


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
.method constructor <init>(Lcom/tencent/bugly/proguard/ay;Ljava/lang/String;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 6

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    .line 1045
    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    const/4 v1, 0x2

    .line 752
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p1

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "observe file, dir:%s fileName:%s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2728
    const-string v0, "manual_bugly_trace_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ".txt"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 759
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    .line 3263
    iget-object v2, v2, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 760
    const-string p2, "proc is not in anr, just ignore"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    .line 4045
    iget-object v2, v2, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    .line 764
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->a()Z

    move-result v2

    const-string v3, "/"

    if-eqz v2, :cond_2

    .line 766
    const-string v2, "Found foreground anr, resend sigquit immediately."

    new-array v4, p1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 767
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->resendSigquit()V

    .line 768
    invoke-static {p2, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 770
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    .line 5045
    iget-object v5, v5, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    .line 770
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, v1, p2}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;JLjava/lang/String;)V

    .line 771
    const-string p2, "Finish handling one anr."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 774
    :cond_2
    const-string v2, "Found background anr, resend sigquit later."

    new-array v4, p1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 775
    invoke-static {p2, v0, v1}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 777
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ay$3;->a:Lcom/tencent/bugly/proguard/ay;

    .line 6045
    iget-object v5, v5, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    .line 777
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, v1, p2}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;JLjava/lang/String;)V

    .line 778
    const-string p2, "Finish handling one anr, now resend sigquit."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 779
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->resendSigquit()V

    return-void

    .line 755
    :cond_3
    const-string p2, "not manual trace file, ignore."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.class public final Lcom/tencent/bugly/proguard/bd;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/proguard/as;

.field private final c:Lcom/tencent/bugly/proguard/aa;

.field private final d:Lcom/tencent/bugly/proguard/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tencent/bugly/proguard/bd;->a:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/tencent/bugly/proguard/bd;->b:Lcom/tencent/bugly/proguard/as;

    .line 48
    iput-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    .line 49
    iput-object p4, p0, Lcom/tencent/bugly/proguard/bd;->d:Lcom/tencent/bugly/proguard/ac;

    return-void
.end method


# virtual methods
.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 8

    move-object/from16 v0, p10

    move-object/from16 v1, p14

    .line 62
    invoke-static {}, Lcom/tencent/bugly/proguard/at;->a()Lcom/tencent/bugly/proguard/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/at;->i()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 64
    const-string v4, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 67
    :cond_0
    new-instance v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v4}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    const/4 v5, 0x1

    .line 69
    iput v5, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 70
    iget-object v6, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/aa;->g()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 71
    iget-object v6, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    iget-object v7, v6, Lcom/tencent/bugly/proguard/aa;->o:Ljava/lang/String;

    iput-object v7, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 72
    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/aa;->q()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 73
    iget-object v6, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v6}, Lcom/tencent/bugly/proguard/aa;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 74
    iput-object p5, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 75
    const-string p5, ""

    if-eqz v2, :cond_1

    const-string v2, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    goto :goto_0

    :cond_1
    move-object v2, p5

    :goto_0
    iput-object v2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 78
    iput-object p6, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    if-nez p7, :cond_2

    goto :goto_1

    :cond_2
    move-object p5, p7

    .line 79
    :goto_1
    iput-object p5, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 80
    iput-wide p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 81
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/bugly/proguard/ap;->c([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 82
    iput-object p1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 83
    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->s()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 85
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->p()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 86
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->A()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 87
    iput-object v0, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 91
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, p3

    .line 93
    :goto_2
    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 94
    invoke-static {p4}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_4

    .line 95
    iput-object p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Z:Ljava/lang/String;

    .line 97
    :cond_4
    invoke-static {p2}, Lcom/tencent/bugly/proguard/be;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->aa:Ljava/lang/String;

    .line 98
    sget p2, Lcom/tencent/bugly/proguard/at;->f:I

    sget-object p4, Lcom/tencent/bugly/proguard/at;->k:Ljava/lang/String;

    sget-boolean p5, Lcom/tencent/bugly/proguard/at;->p:Z

    move-object/from16 v0, p11

    invoke-static {v0, p2, p4, p5}, Lcom/tencent/bugly/proguard/be;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 100
    sget p2, Lcom/tencent/bugly/proguard/at;->f:I

    move-object/from16 p4, p12

    invoke-static {p4, p2, p3, v5}, Lcom/tencent/bugly/proguard/be;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    move-object/from16 p2, p9

    .line 102
    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    move-object/from16 p2, p8

    .line 103
    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/lang/String;

    move-object/from16 p2, p13

    .line 104
    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    .line 106
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->k()J

    move-result-wide p4

    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 107
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->j()J

    move-result-wide p4

    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 108
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->l()J

    move-result-wide p4

    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 109
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ab;->b(Landroid/content/Context;)J

    move-result-wide p4

    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    .line 110
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->g()J

    move-result-wide p4

    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    .line 111
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->h()J

    move-result-wide p4

    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    if-eqz p16, :cond_7

    .line 114
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->j()J

    move-result-wide p2

    iput-wide p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 115
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->f()J

    move-result-wide p2

    iput-wide p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 116
    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->l()J

    move-result-wide p2

    iput-wide p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 117
    invoke-static {}, Lcom/tencent/bugly/proguard/ao;->a()[B

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 118
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    iget-wide p3, p2, Lcom/tencent/bugly/proguard/aa;->a:J

    iput-wide p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:J

    .line 119
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->a()Z

    move-result p2

    iput-boolean p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Z

    .line 120
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    .line 1393
    iget-boolean p2, p2, Lcom/tencent/bugly/proguard/aa;->Q:Z

    .line 120
    sget p3, Lcom/tencent/bugly/proguard/at;->h:I

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/ap;->a(ZI)Ljava/util/Map;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 122
    const-string p2, "java:\n"

    .line 123
    iget-object p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_5

    add-int/lit8 p2, p2, 0x6

    .line 126
    iget-object p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 127
    iget-object p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p4, v5

    .line 127
    invoke-virtual {p3, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 130
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_5

    iget-object p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p5, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 131
    invoke-interface {p4, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 132
    iget-object p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p5, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 133
    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 135
    invoke-virtual {p4, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_5

    .line 137
    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 139
    iget-object p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p5, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 141
    invoke-virtual {p4, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    :cond_5
    if-nez p1, :cond_6

    .line 148
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/aa;->d:Ljava/lang/String;

    iput-object p1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 151
    :cond_6
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->z()I

    move-result p1

    iput p1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    .line 152
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    .line 1996
    iget p2, p1, Lcom/tencent/bugly/proguard/aa;->x:I

    .line 152
    iput p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:I

    .line 153
    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->t()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    .line 154
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/aa;->y()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    return-object v4

    :cond_7
    const-wide/16 p4, -0x1

    .line 157
    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 158
    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 159
    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 160
    iget-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-nez p2, :cond_8

    .line 161
    const-string p2, "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 164
    :cond_8
    iput-wide p4, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:J

    const/4 p2, -0x1

    .line 165
    iput p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    .line 166
    iput p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:I

    move-object/from16 p2, p15

    .line 167
    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    .line 169
    iget-object p2, p0, Lcom/tencent/bugly/proguard/bd;->c:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/aa;->y()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 170
    iput-object p3, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    if-nez p1, :cond_9

    .line 172
    const-string p1, "unknown(record)"

    iput-object p1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    :cond_9
    if-eqz v1, :cond_a

    .line 175
    iput-object v1, v4, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    :cond_a
    return-object v4
.end method

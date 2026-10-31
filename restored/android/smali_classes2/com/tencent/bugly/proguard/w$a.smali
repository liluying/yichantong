.class final Lcom/tencent/bugly/proguard/w$a;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/proguard/w;

.field private b:I

.field private d:Ljava/lang/String;

.field private e:Landroid/content/ContentValues;

.field private f:Z

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:[B


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/w;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x4

    .line 765
    iput p1, p0, Lcom/tencent/bugly/proguard/w$a;->b:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[B)V
    .locals 0

    .line 795
    iput p1, p0, Lcom/tencent/bugly/proguard/w$a;->p:I

    .line 796
    iput-object p2, p0, Lcom/tencent/bugly/proguard/w$a;->q:Ljava/lang/String;

    .line 797
    iput-object p3, p0, Lcom/tencent/bugly/proguard/w$a;->r:[B

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 811
    iget v1, v0, Lcom/tencent/bugly/proguard/w$a;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 832
    :pswitch_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    iget v3, v0, Lcom/tencent/bugly/proguard/w$a;->p:I

    iget-object v4, v0, Lcom/tencent/bugly/proguard/w$a;->q:Ljava/lang/String;

    invoke-static {v1, v3, v4, v2}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z

    return-void

    .line 829
    :pswitch_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    iget v3, v0, Lcom/tencent/bugly/proguard/w$a;->p:I

    invoke-static {v1, v3, v2}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;

    return-void

    .line 826
    :pswitch_2
    iget-object v1, v0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    iget v3, v0, Lcom/tencent/bugly/proguard/w$a;->p:I

    iget-object v4, v0, Lcom/tencent/bugly/proguard/w$a;->q:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/w$a;->r:[B

    invoke-static {v1, v3, v4, v5, v2}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    return-void

    .line 819
    :pswitch_3
    iget-object v6, v0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    iget-boolean v7, v0, Lcom/tencent/bugly/proguard/w$a;->f:Z

    iget-object v8, v0, Lcom/tencent/bugly/proguard/w$a;->d:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/bugly/proguard/w$a;->g:[Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/bugly/proguard/w$a;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/w$a;->i:[Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/bugly/proguard/w$a;->j:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/bugly/proguard/w$a;->k:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/bugly/proguard/w$a;->l:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/bugly/proguard/w$a;->m:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 822
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    .line 816
    :pswitch_4
    iget-object v1, v0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/w$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/w$a;->n:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/w$a;->o:[Ljava/lang/String;

    invoke-static {v1, v3, v4, v5, v2}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I

    return-void

    .line 813
    :pswitch_5
    iget-object v1, v0, Lcom/tencent/bugly/proguard/w$a;->a:Lcom/tencent/bugly/proguard/w;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/w$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/w$a;->e:Landroid/content/ContentValues;

    invoke-static {v1, v3, v4, v2}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

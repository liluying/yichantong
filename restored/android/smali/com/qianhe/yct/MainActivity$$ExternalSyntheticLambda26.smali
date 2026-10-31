.class public final synthetic Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/MainActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/MainActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;->f$0:Lcom/qianhe/yct/MainActivity;

    iput-boolean p2, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;->f$0:Lcom/qianhe/yct/MainActivity;

    iget-boolean v1, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;->f$1:Z

    invoke-static {v0, v1}, Lcom/qianhe/yct/MainActivity;->$r8$lambda$TCL4LhUKDpiZFCB-LAdXHJ2atZ8(Lcom/qianhe/yct/MainActivity;Z)V

    return-void
.end method

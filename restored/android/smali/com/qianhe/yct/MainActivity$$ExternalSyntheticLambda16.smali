.class public final synthetic Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/MainActivity;

.field public final synthetic f$1:Lcom/qianhe/yct/event/QueryPointResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;->f$0:Lcom/qianhe/yct/MainActivity;

    iput-object p2, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;->f$1:Lcom/qianhe/yct/event/QueryPointResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;->f$0:Lcom/qianhe/yct/MainActivity;

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;->f$1:Lcom/qianhe/yct/event/QueryPointResponse;

    invoke-static {v0, v1}, Lcom/qianhe/yct/MainActivity;->$r8$lambda$5niABjwizx6hhUfCXZP8SHUYdNY(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointResponse;)V

    return-void
.end method

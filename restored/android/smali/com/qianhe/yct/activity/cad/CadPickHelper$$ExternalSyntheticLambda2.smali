.class public final synthetic Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/cad/CadPickHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->$r8$lambda$aKGy8QK4q2RVrmF594YFU3tqRzI(Lcom/qianhe/yct/activity/cad/CadPickHelper;Landroid/net/Uri;)V

    return-void
.end method

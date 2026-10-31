.class public final synthetic Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field public final synthetic f$1:Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/cad/CadPickHelper;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;->f$0:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    iput-object p2, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;->f$1:Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;->f$0:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    iget-object v1, p0, Lcom/qianhe/yct/activity/cad/CadPickHelper$$ExternalSyntheticLambda4;->f$1:Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->$r8$lambda$0q-YJjEdh5dFz2zr44rYLG3NgaE(Lcom/qianhe/yct/activity/cad/CadPickHelper;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.class public final synthetic Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    check-cast p1, Lcom/journeyapps/barcodescanner/ScanIntentResult;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->$r8$lambda$fG-w_ITSwZBW39Ms0NL-EEhzy3c(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;Lcom/journeyapps/barcodescanner/ScanIntentResult;)V

    return-void
.end method

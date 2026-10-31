.class Lcom/qianhe/yct/base/BaseActivity$28;
.super Landroid/content/ClipDescription;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->copyShareTextToClipboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$tag:Landroid/os/PersistableBundle;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 3458
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$28;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p4, p0, Lcom/qianhe/yct/base/BaseActivity$28;->val$tag:Landroid/os/PersistableBundle;

    invoke-direct {p0, p2, p3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 3459
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 3460
    invoke-static {p0, p4}, Lcom/qianhe/yct/base/BaseActivity$28$$ExternalSyntheticApiModelOutline0;->m(Lcom/qianhe/yct/base/BaseActivity$28;Landroid/os/PersistableBundle;)V

    :cond_0
    return-void
.end method

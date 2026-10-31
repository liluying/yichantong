.class Lcom/qianhe/yct/activity/RTKInfoActivity$5;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$5;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$5;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$5;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvDeviceNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$5;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->copy_to_clipboard:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

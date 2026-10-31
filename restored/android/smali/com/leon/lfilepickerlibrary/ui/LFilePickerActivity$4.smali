.class Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;
.super Ljava/lang/Object;
.source "LFilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 251
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isChooseMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 252
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getNotFoundFiles()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    sget v0, Lcom/leon/lfilepickerlibrary/R$string;->lfile_NotFoundBooks:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$4;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$1100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    return-void
.end method

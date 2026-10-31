.class Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;
.super Ljava/lang/Object;
.source "RTKRegisterDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFormatting:Z

.field final synthetic this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->isFormatting:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 164
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvError:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 166
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->isFormatting:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 170
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 138
    const-string p2, "-"

    :try_start_0
    iget-boolean p3, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->isFormatting:Z

    if-nez p3, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_3

    .line 139
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-virtual {p3, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 140
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x4

    if-lt p4, v0, :cond_4

    const/4 p4, 0x1

    .line 141
    iput-boolean p4, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->isFormatting:Z

    .line 142
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    .line 144
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 147
    :cond_1
    :goto_1
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 154
    :cond_3
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;->isFormatting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 157
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

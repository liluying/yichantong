.class Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;
.super Ljava/lang/Object;
.source "LFilePickerActivity.java"

# interfaces
.implements Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;


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

    .line 201
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isMutilyMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$1000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;I)V

    .line 208
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$400(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->updateAllSelelcted(Z)V

    .line 209
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1, v1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$502(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Z)Z

    .line 210
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->updateMenuTitle()V

    .line 211
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    sget v1, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Selected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v2}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v2}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v2}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object p1

    const-string v0, " )"

    const-string v2, "( "

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v4}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v2}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    sget v5, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Selected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v2}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getMaxNum()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getMaxNum()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 226
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    sget v0, Lcom/leon/lfilepickerlibrary/R$string;->lfile_OutSize:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$1000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;I)V

    return-void

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isChooseMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$1100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V

    return-void

    .line 241
    :cond_6
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$3;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    sget v0, Lcom/leon/lfilepickerlibrary/R$string;->lfile_ChooseTip:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

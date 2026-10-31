.class Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;
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

    .line 176
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 179
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0, p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$002(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$200(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/filter/LFileFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v2}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isGreater()Z

    move-result v2

    iget-object v3, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v3}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getFileSize()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leon/lfilepickerlibrary/utils/FileUtils;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;ZJ)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$102(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Ljava/util/List;)Ljava/util/List;

    .line 185
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$400(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$100(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->setmListData(Ljava/util/List;)V

    .line 186
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$400(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->updateAllSelelcted(Z)V

    .line 187
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1, v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$502(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Z)Z

    .line 188
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->updateMenuTitle()V

    .line 189
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    sget v2, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Selected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$700(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 191
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$000(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$800(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$900(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$300(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->getAddText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$2;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->access$600(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/leon/lfilepickerlibrary/R$string;->lfile_Selected:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

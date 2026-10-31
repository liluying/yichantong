.class Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$2;
.super Ljava/lang/Object;
.source "ChooseExportFolderDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->-$$Nest$fgetfolderList(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->-$$Nest$fgetfolderList(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->-$$Nest$menterFolder(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDel(I)V
    .locals 0

    .line 0
    return-void
.end method

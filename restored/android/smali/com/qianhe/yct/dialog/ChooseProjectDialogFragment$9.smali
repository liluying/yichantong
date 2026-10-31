.class Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$9;
.super Ljava/lang/Object;
.source "ChooseProjectDialogFragment.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fputbaseProEntity(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method

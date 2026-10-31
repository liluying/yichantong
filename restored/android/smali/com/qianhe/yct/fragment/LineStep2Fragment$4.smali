.class Lcom/qianhe/yct/fragment/LineStep2Fragment$4;
.super Ljava/lang/Object;
.source "LineStep2Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep2Fragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep2Binding;->linePreView:Lcom/qianhe/yct/view/LinePreView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/LineEntity;->east1:D

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation1:D

    const/4 v4, 0x2

    new-array v5, v4, [D

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    const/4 v0, 0x1

    aput-wide v2, v5, v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/LineEntity;->east2:D

    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep2Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/LineStep2Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep2Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v3

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/LineEntity;->targetElevation2:D

    new-array v3, v4, [D

    aput-wide v1, v3, v6

    aput-wide v7, v3, v0

    invoke-virtual {p1, v5, v3}, Lcom/qianhe/yct/view/LinePreView;->setPointAB([D[D)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

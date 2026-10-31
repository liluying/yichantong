.class Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;
.super Ljava/lang/Object;
.source "DikeStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 204
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->ivSelA:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput v1, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput v2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    :cond_1
    return-void

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput v2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

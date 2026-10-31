.class Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;
.super Ljava/lang/Object;
.source "DikeStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->lltValue:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

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

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->ivSelB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput v1, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v0, Lcom/qianhe/baselib/enums/DikeEnum;->FLAT:Lcom/qianhe/baselib/enums/DikeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/DikeEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput v2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickA:I

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    :cond_1
    return-void

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput v2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->tickB:I

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$7;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v3, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    return-void
.end method

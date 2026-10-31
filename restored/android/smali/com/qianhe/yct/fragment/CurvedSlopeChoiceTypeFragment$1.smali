.class Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;
.super Ljava/lang/Object;
.source "CurvedSlopeChoiceTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeTop:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 55
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCurvedslopeChoiceTypeBinding;->ivSlopeBottom:Lcom/qianhe/yct/view/NightAwareImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 56
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment$1;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeChoiceTypeFragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    iput v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    return-void
.end method

.class Lcom/qianhe/yct/fragment/PointCreateFragment$1;
.super Ljava/lang/Object;
.source "PointCreateFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PointCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mgetCoordModeIndex(Lcom/qianhe/yct/fragment/PointCreateFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v1, v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mcommitInputFromMode(Lcom/qianhe/yct/fragment/PointCreateFragment;I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPointCreateBinding;->tvPointSystem:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fgetpointSystems(Lcom/qianhe/yct/fragment/PointCreateFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mupdateCoordTypeUi(Lcom/qianhe/yct/fragment/PointCreateFragment;I)V

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mhasStoredCoords(Lcom/qianhe/yct/fragment/PointCreateFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mrefreshCoordDisplayForCurrentMode(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    return-void

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$1;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$mclearCoordDisplay(Lcom/qianhe/yct/fragment/PointCreateFragment;)V

    return-void
.end method

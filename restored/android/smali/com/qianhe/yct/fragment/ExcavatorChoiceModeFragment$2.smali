.class Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;
.super Ljava/lang/Object;
.source "ExcavatorChoiceModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$mclearModeSelection(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;->this$0:Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->-$$Nest$mclearDistanceMeasureIfNeeded(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    return-void
.end method

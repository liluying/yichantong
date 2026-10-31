.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

.field final synthetic val$noSensorGif:I

.field final synthetic val$sensorGif:I

.field final synthetic val$type:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    iput p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->val$sensorGif:I

    iput p4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->val$noSensorGif:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 556
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fputlastFocusedTyep(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$FocusedType;)V

    .line 557
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Z)V

    .line 558
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object p2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 559
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->val$sensorGif:I

    invoke-static {p1, p2, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1600(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/widget/ImageView;I)V

    return-void

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object p2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 561
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep2Binding;->ivStep2:Lpl/droidsonroids/gif/GifImageView;

    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$9;->val$noSensorGif:I

    invoke-static {p1, p2, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->access$1700(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Landroid/widget/ImageView;I)V

    :cond_1
    return-void
.end method

.class Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;
.super Ljava/lang/Object;
.source "ExcavatorStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

.field final synthetic val$noSensorGif:I

.field final synthetic val$sensorGif:I

.field final synthetic val$type:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    iput p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->val$sensorGif:I

    iput p4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->val$noSensorGif:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_2

    .line 194
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;)V

    .line 195
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Z)V

    .line 196
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object p2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 198
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    if-eqz p1, :cond_0

    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ay_mode4_sensor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->val$sensorGif:I

    :goto_0
    invoke-static {p2, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$800(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/widget/ImageView;I)V

    return-void

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object p2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;->val$noSensorGif:I

    invoke-static {p1, p2, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->access$900(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method

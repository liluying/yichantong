.class Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;
.super Ljava/lang/Object;
.source "ExcavatorStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

.field final synthetic val$noSensorGif:I

.field final synthetic val$onFocusExtra:Ljava/lang/Runnable;

.field final synthetic val$sensorGif:I

.field final synthetic val$type:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;IILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    iput p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$sensorGif:I

    iput p4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$noSensorGif:I

    iput-object p5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$onFocusExtra:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_2

    .line 345
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$type:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;)V

    .line 346
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    .line 347
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object p2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 348
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$sensorGif:I

    invoke-static {p1, p2, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$1200(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object p2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 350
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    iget v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$noSensorGif:I

    invoke-static {p1, p2, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->access$1300(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/widget/ImageView;I)V

    .line 352
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;->val$onFocusExtra:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 353
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

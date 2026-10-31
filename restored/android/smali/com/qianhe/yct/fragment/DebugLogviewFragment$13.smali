.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;
.super Ljava/lang/Object;
.source "DebugLogviewFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DebugLogviewFragment;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 334
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvExtRoll:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v5, Lcom/qianhe/yct/R$string;->roll_angle:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v6, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    invoke-static {v5, v6, v7, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    const-string v4, "%s\uff1a%s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvExtPitch:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v6, Lcom/qianhe/yct/R$string;->pitch_angle:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v7, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    invoke-static {v6, v7, v8, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvExtHeading:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    sget v6, Lcom/qianhe/yct/R$string;->heading_angle:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v7, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    invoke-static {v6, v7, v8, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    aput-object p1, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$13;->onChanged(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    return-void
.end method

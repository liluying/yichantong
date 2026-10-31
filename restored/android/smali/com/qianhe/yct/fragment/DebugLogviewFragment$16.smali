.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;
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

    .line 363
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/GSTEntity;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 368
    :cond_0
    iget v0, p1, Lcom/qianhe/baselib/bean/GSTEntity;->latstd:F

    mul-float v0, v0, v0

    iget v1, p1, Lcom/qianhe/baselib/bean/GSTEntity;->lonstd:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 369
    iget p1, p1, Lcom/qianhe/baselib/bean/GSTEntity;->altstd:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v4, v2

    double-to-float p1, v4

    .line 370
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvHRMS:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    float-to-double v3, v0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvHRMS:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvVRMS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    float-to-double v6, p1

    invoke-static {v1, v6, v7, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvVRMS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetappConfig(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 363
    check-cast p1, Lcom/qianhe/baselib/bean/GSTEntity;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$16;->onChanged(Lcom/qianhe/baselib/bean/GSTEntity;)V

    return-void
.end method

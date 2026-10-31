.class Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;
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
.method public static synthetic $r8$lambda$EkQh89LLtYNVp80n2n9c_hqgh9Q(Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    .line 318
    invoke-static {p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$madjustNsvHeight(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputnaviRoll(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputnaviPitch(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fputnaviHeading(Lcom/qianhe/yct/fragment/DebugLogviewFragment;D)V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mrefreshInsAngleViews(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)V

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsLon:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsLat:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsElev:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsLonR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsLatR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->tvInsElevR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    invoke-static {v1, v2, v3, v5}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mformatFixed(Lcom/qianhe/yct/fragment/DebugLogviewFragment;DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {v0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$mrefreshInsState(Lcom/qianhe/yct/fragment/DebugLogviewFragment;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 318
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->this$0:Lcom/qianhe/yct/fragment/DebugLogviewFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DebugLogviewFragment;)Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDebugLogviewBinding;->lltInfo:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/DebugLogviewFragment$11;->onChanged(Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

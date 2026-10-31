.class public Lcom/qianhe/yct/activity/ConverParamsCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ConverParamsCreateActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

.field private cachedFourCalculated:Z

.field private cachedFourParamsDetail:Ljava/lang/String;

.field private cachedFourResiduals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSevenCalculated:Z

.field private cachedSevenParamsDetail:Ljava/lang/String;

.field private cachedSevenResiduals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;"
        }
    .end annotation
.end field

.field private collectLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private controlInputScrollLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private controlPointsFourCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;"
        }
    .end annotation
.end field

.field private controlPointsSevenCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;"
        }
    .end annotation
.end field

.field private createMode:I

.field private csvImportLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

.field private focusedControlInput:Landroid/view/View;

.field private final gson:Lcom/google/gson/Gson;

.field private initName:Ljava/lang/String;

.field private lastKeyboardTop:I

.field private lastResiduals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;"
        }
    .end annotation
.end field

.field private localId:J

.field private manualBaselineFour:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

.field private manualBaselineSeven:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

.field private manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

.field private manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

.field private paramsCalculated:Z

.field private pendingCollectPosition:I

.field private pendingPickTarget:I

.field private pendingShowNameKeyboard:Z

.field private final pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:Z

.field private suppressParamTypeSpinnerCallback:Z


# direct methods
.method public static synthetic $r8$lambda$0jhH4pX7ru9EEkr4uhMdk39QWHk(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->geodetic:[D

    if-nez p1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyGeodeticCoords([D)V

    return-void

    .line 379
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPendingPick()V

    return-void
.end method

.method public static synthetic $r8$lambda$3K3kUgSA-tRAxjC22sPlJhnwSzQ(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 6

    .line 1250
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    .line 1250
    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1253
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda20;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 1258
    new-array v3, v1, [I

    .line 1259
    new-array v1, v1, [I

    .line 1260
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1261
    iget-object v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1262
    aget v4, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v4, v0

    .line 1263
    aget v0, v1, v2

    iget-object v5, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    const/4 v5, 0x0

    if-le v4, v0, :cond_2

    .line 1265
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    sub-int/2addr v4, v0

    invoke-virtual {p0, v5, v4}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void

    .line 1266
    :cond_2
    aget v0, v3, v2

    aget v1, v1, v2

    if-ge v0, v1, :cond_3

    .line 1267
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v5, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$7zlKuZwBysu3JYcTeveO6Feczoo(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 212
    const-string v0, "ecef"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 213
    const-string v1, "geodetic"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p1

    .line 215
    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyEcefCoords([D)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 218
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyGeodeticCoords([D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$DJgahBIaIFWodROvwvkzNQo4_ro(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 p1, 0x1

    .line 356
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->startInstrumentCollectDestination(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DqL9h7e0owKyDfKcWhArRd370yo(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 2

    .line 1244
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    .line 1244
    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$J0FjR1fU9JMXQ2TWn2fdIR7PEZQ(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->chooseImportCsvFile()V

    return-void
.end method

.method public static synthetic $r8$lambda$MMUFG4Mu_7Swbm8sUw-3mVMqwCk(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->startPointLibraryDestination()V

    return-void

    :cond_0
    const/4 p1, 0x5

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->startCollectDestination(I)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 348
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->startInstrumentCollectDestination(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mi_94Y4dB88TqhmDSQLlznzWmbo(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->importControlPointsFromCsv(Landroid/net/Uri;)V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$NQ_9dEGdLqyo-E-FWhK1HuREGt4(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1293
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performScrollInputAboveKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zv-iF7-xvThEDWQZVoVf-soCe6o(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 2

    .line 1275
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->focusedControlInput:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1275
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->getKeyboardTopOnScreen()I

    move-result v0

    .line 1279
    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastKeyboardTop:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1282
    :cond_1
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastKeyboardTop:I

    .line 1283
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->focusedControlInput:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performScrollInputAboveKeyboard(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$d3xpySbJU-anzHaQiLIFQn0tIdU(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->scrollToLastControlPointItem()V

    return-void
.end method

.method public static synthetic $r8$lambda$d_gdYT0z9C1SJ3ohklHrq7KkpO4(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 888
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$g9o27IBit7W61UItdnw9tOR3Bo0(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    const-string v0, "defaultname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 447
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->setDefaultConverParamsName()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 451
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->focusNameInputAndShowKeyboard()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$h8XRMSUDlw7jhTVBlpSasIEu0nI(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->calculateParams()V

    return-void
.end method

.method public static synthetic $r8$lambda$kP1FdB73P4TzDYLzwiZnDCPs8Kw(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1295
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performScrollInputAboveKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lhFB0YTFWD8oBr7gy48WKXvwczc(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->saveParams()V

    return-void
.end method

.method public static synthetic $r8$lambda$lyngBrlzaBWGQCSMvrNtckAtCko(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/widget/RadioGroup;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    sget p1, Lcom/qianhe/yct/R$id;->rbManualInput:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 400
    :goto_0
    iget p2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    .line 402
    iget-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget p2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashManualParamsToCache(I)V

    .line 403
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->syncManualParamsFromUiToEntity()V

    goto :goto_1

    .line 405
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget p2, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashControlPointStateToCache(I)V

    .line 407
    :goto_1
    iput p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-ne p1, v1, :cond_3

    .line 410
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->syncManualCacheFromEntity(I)V

    .line 411
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->loadManualParamsToUi()V

    .line 412
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyManualCacheToEntity(I)V

    .line 413
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->captureManualParamsBaselineFromUi()V

    goto :goto_2

    .line 415
    :cond_3
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearCalculatedResult(Z)V

    .line 417
    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateCreateModeUi()V

    return-void
.end method

.method public static synthetic $r8$lambda$oizGHgEiZj7QvrbMXSnABIc3JRY(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1296
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performScrollInputAboveKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$omA00xun5rf7ZeK2Mha3QIN8IMU(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->scrollInputAboveKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q-tQl4D5bbmCZS90CKaFdG1QdN8(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    .line 186
    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 189
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 190
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    .line 191
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$w3rTJSAOZcJP7XuRRhYvu3n9XPY(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1294
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performScrollInputAboveKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zyKCWKwAtR7WNz4Jd_0_mQO6DZI(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V
    .locals 2

    .line 439
    sget p1, Lcom/qianhe/yct/R$string;->import_control_points_format:I

    .line 439
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 439
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcollectLauncher(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->collectLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetentity(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointList(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsuppressParamTypeSpinnerCallback(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->suppressParamTypeSpinnerCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpendingCollectPosition(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingPickTarget(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCalculatedResult(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearCalculatedResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableConversionParam(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->enableConversionParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSevenParam(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monParamTypeChanged(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->onParamTypeChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollToLastControlPointItem(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->scrollToLastControlPointItem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCollectMethodDialog(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->showCollectMethodDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateManualParamTypeVisibility(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateManualParamTypeVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    const/4 v1, -0x1

    .line 102
    iput v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    .line 103
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->gson:Lcom/google/gson/Gson;

    .line 111
    iput v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastKeyboardTop:I

    return-void
.end method

.method private applyEcefCoords([D)V
    .locals 3

    if-eqz p1, :cond_1

    .line 905
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    const/4 v1, 0x0

    .line 909
    aget-wide v1, p1, v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    const/4 v1, 0x1

    .line 910
    aget-wide v1, p1, v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    const/4 v1, 0x2

    .line 911
    aget-wide v1, p1, v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    .line 912
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 913
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearCalculatedResult()V

    .line 914
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPendingPick()V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyGeodeticCoords([D)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_6

    .line 919
    iget v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    if-ltz v1, :cond_6

    iget-object v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_2

    .line 922
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 923
    sget v1, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 924
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPendingPick()V

    return-void

    .line 927
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    iget v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 931
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 932
    new-array v14, v3, [D

    .line 933
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v7

    aget-wide v8, p1, v6

    aget-wide v10, p1, v5

    aget-wide v12, p1, v4

    invoke-virtual/range {v7 .. v14}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geodeticToXyzOnly(DDD[D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 934
    sget v1, Lcom/qianhe/yct/R$string;->coord_convert_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 935
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPendingPick()V

    return-void

    .line 938
    :cond_2
    aget-wide v2, v14, v6

    .line 939
    aget-wide v5, v14, v5

    .line 940
    aget-wide v7, v14, v4

    goto :goto_0

    .line 942
    :cond_3
    new-array v2, v3, [D

    .line 943
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v9

    aget-wide v10, p1, v6

    aget-wide v12, p1, v5

    aget-wide v14, p1, v4

    move-object/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToProjOnly(DDD[D)Z

    move-result v2

    if-nez v2, :cond_4

    .line 944
    sget v1, Lcom/qianhe/yct/R$string;->coord_convert_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 945
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPendingPick()V

    return-void

    .line 948
    :cond_4
    aget-wide v2, v16, v6

    .line 949
    aget-wide v5, v16, v5

    const-wide/16 v7, 0x0

    .line 952
    :goto_0
    iget v9, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    if-ne v9, v4, :cond_5

    .line 953
    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    .line 954
    iput-wide v5, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    .line 955
    iput-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    goto :goto_1

    .line 957
    :cond_5
    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    .line 958
    iput-wide v5, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    .line 959
    iput-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    .line 961
    :goto_1
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 962
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearCalculatedResult()V

    .line 963
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPendingPick()V

    :cond_6
    :goto_2
    return-void
.end method

.method private applyManualCacheToEntity(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    if-eqz v0, :cond_0

    .line 531
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 532
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    if-eqz p1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)V

    :cond_1
    return-void
.end method

.method private applyManualParamsFromUi()Z
    .locals 21

    move-object/from16 v0, p0

    .line 723
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isManualParamsAllDefaultValues()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 724
    sget v1, Lcom/qianhe/yct/R$string;->manual_params_default_values:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v2

    .line 727
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 728
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 729
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualScale:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    .line 730
    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v7, v8}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->isValidScalePpm(D)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 734
    :cond_2
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 735
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDz:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v10

    .line 736
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v12

    .line 737
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v14

    .line 738
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRz:Lcom/qianhe/yct/view/NumericEditText;

    move-wide/from16 v17, v3

    const/16 v16, 0x0

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 739
    invoke-virtual {v0, v10, v11}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v12, v13}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v14, v15}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 743
    :cond_3
    new-instance v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;-><init>()V

    move-wide/from16 v19, v10

    move-wide/from16 v9, v17

    .line 744
    iput-wide v9, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    .line 745
    iput-wide v5, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    move-wide/from16 v5, v19

    .line 746
    iput-wide v5, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    .line 747
    iput-wide v12, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    .line 748
    iput-wide v14, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    .line 749
    iput-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    .line 750
    invoke-static {v7, v8}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scalePpmToK(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    .line 751
    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isValidSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 752
    sget v1, Lcom/qianhe/yct/R$string;->manual_params_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v16

    .line 755
    :cond_4
    iget-object v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const/4 v3, 0x2

    iput v3, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 756
    invoke-virtual {v2, v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)V

    const/4 v4, 0x1

    goto :goto_1

    .line 740
    :cond_5
    :goto_0
    sget v1, Lcom/qianhe/yct/R$string;->manual_params_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v16

    :cond_6
    move-wide v9, v3

    const/16 v16, 0x0

    .line 758
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRotation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 759
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-nez v3, :cond_7

    .line 760
    sget v1, Lcom/qianhe/yct/R$string;->manual_params_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v16

    .line 763
    :cond_7
    new-instance v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;-><init>()V

    .line 764
    iput-wide v9, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    .line 765
    iput-wide v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    .line 766
    iput-wide v1, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    .line 767
    invoke-static {v7, v8}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scalePpmToK(D)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    .line 768
    invoke-direct {v0, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isValidFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 769
    sget v1, Lcom/qianhe/yct/R$string;->manual_params_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v16

    .line 772
    :cond_8
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const/4 v4, 0x1

    iput v4, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 773
    invoke-virtual {v1, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)V

    .line 776
    :goto_1
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->shouldClearControlPointsOnManualSave()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 777
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearControlPointDataForManualSave()V

    :cond_9
    return v4

    .line 731
    :goto_2
    sget v1, Lcom/qianhe/yct/R$string;->manual_params_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return v16
.end method

.method private applyTransParamToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 2

    .line 1566
    iget v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    iput v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 1567
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 1568
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 1569
    iput-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-void
.end method

.method private applyTransformParamsToDevice(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 2

    .line 1573
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v0

    .line 1574
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1576
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    :cond_0
    return-void
.end method

.method private buildControlPointEntities()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;",
            ">;"
        }
    .end annotation

    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 1225
    new-instance v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;-><init>()V

    .line 1226
    iget-wide v4, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    .line 1227
    iget-wide v4, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    .line 1228
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    iget-wide v7, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    goto :goto_1

    :cond_0
    move-wide v7, v5

    :goto_1
    iput-wide v7, v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    .line 1229
    iget-wide v7, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    .line 1230
    iget-wide v7, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    .line 1231
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v5, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    :cond_1
    iput-wide v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    .line 1232
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private buildControlPointResidualText(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 1352
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1353
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1354
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/qianhe/yct/R$string;->calc_residual:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 1356
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "%.4f"

    const-string v9, ": "

    const/16 v10, 0xa

    if-ge v6, v7, :cond_3

    .line 1357
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;

    invoke-static {v7, v2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->computeResidualMagnitude(Lcom/qh/yctdevice/GnssParamTransform$ResidualError;Z)D

    move-result-wide v11

    cmpl-double v7, v11, v4

    if-lez v7, :cond_2

    move-wide v4, v11

    .line 1361
    :cond_2
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v7, Lcom/qianhe/yct/R$string;->control_point_index:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v10, v13, v0

    invoke-virtual {p0, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v0

    invoke-static {v7, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1364
    :cond_3
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p1, Lcom/qianhe/yct/R$string;->calc_max_residual:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p1, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1352
    :cond_4
    :goto_2
    const-string p1, ""

    return-object p1
.end method

.method private buildParamsSummaryText()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1341
    iget-object v6, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v7, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v8, 0x2

    const-string v9, ""

    if-ne v7, v8, :cond_1

    .line 1342
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v6

    if-nez v6, :cond_0

    return-object v9

    .line 1344
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-wide v14, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget v15, Lcom/qianhe/yct/R$string;->scale_ppm:I

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    const/16 v17, 0x3

    iget-wide v2, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    invoke-static {v2, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToPpm(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v5

    aput-object v10, v3, v4

    aput-object v11, v3, v8

    aput-object v12, v3, v17

    aput-object v13, v3, v16

    aput-object v14, v3, v1

    const/4 v1, 0x6

    aput-object v15, v3, v1

    const/4 v1, 0x7

    aput-object v2, v3, v1

    const-string v1, "dx=%.6f\ndy=%.6f\ndz=%.6f\nrx=%.9f\nry=%.9f\nrz=%.9f\n%s=%.6f"

    invoke-static {v7, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/16 v16, 0x4

    const/16 v17, 0x3

    .line 1346
    invoke-virtual {v6}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v9

    .line 1348
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    sget v10, Lcom/qianhe/yct/R$string;->scale_ppm:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    invoke-static {v11, v12}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToPpm(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v5

    aput-object v7, v1, v4

    aput-object v9, v1, v8

    aput-object v10, v1, v17

    aput-object v2, v1, v16

    const-string v2, "dx=%.6f\ndy=%.6f\nrotation=%.9f\n%s=%.6f"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildResultText()Ljava/lang/String;
    .locals 3

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->buildParamsSummaryText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->buildControlPointResidualText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculateParams()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->syncVisiblePointsFromViews(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1076
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performCalculate()V

    return-void
.end method

.method private captureManualParamsBaselineFromUi()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashManualParamsToCache(I)V

    .line 478
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyManualCacheToEntity(I)V

    .line 479
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->copySevenDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineSeven:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    .line 481
    iput-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineFour:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->copyFourDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineFour:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    .line 484
    iput-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineSeven:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    return-void
.end method

.method private chooseImportCsvFile()V
    .locals 3

    .line 233
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAT80orAT85()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/leon/lfilepickerlibrary/LFilePicker;

    invoke-direct {v0}, Lcom/leon/lfilepickerlibrary/LFilePicker;-><init>()V

    invoke-virtual {v0, p0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withActivity(Landroid/app/Activity;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withRequestCode(I)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->file_selection:I

    .line 235
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withTitle(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withMutilyMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withMaxNum(I)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->select_at_least_one_file:I

    .line 237
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withNotFoundBooks(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/LFilePicker;->withChooseMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->start()V

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->csvImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private clearCalculatedResult()V
    .locals 1

    const/4 v0, 0x1

    .line 1406
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearCalculatedResult(Z)V

    return-void
.end method

.method private clearCalculatedResult(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1410
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    const/4 v1, 0x0

    .line 1411
    iput-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    .line 1412
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1413
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltResult:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 1415
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private clearControlPointDataForManualSave()V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setControlPointList(Ljava/util/List;)V

    .line 832
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsFourCache:Ljava/util/List;

    .line 834
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsSevenCache:Ljava/util/List;

    const/4 v1, 0x0

    .line 835
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourCalculated:Z

    .line 836
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenCalculated:Z

    .line 837
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourResiduals:Ljava/util/List;

    .line 838
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenResiduals:Ljava/util/List;

    .line 839
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourParamsDetail:Ljava/lang/String;

    .line 840
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenParamsDetail:Ljava/lang/String;

    .line 841
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    .line 842
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    .line 843
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private static clonePointList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/ConverParamsControlPointInput;",
            ">;"
        }
    .end annotation

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    .line 618
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 619
    new-instance v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v2}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    .line 620
    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iput-wide v3, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    .line 621
    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    iput-wide v3, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    .line 622
    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    iput-wide v3, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    .line 623
    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    iput-wide v3, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    .line 624
    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    iput-wide v3, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    .line 625
    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    iput-wide v3, v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    .line 626
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static computeResidualMagnitude(Lcom/qh/yctdevice/GnssParamTransform$ResidualError;Z)D
    .locals 4

    if-eqz p1, :cond_0

    .line 1372
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide p0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->z:D

    mul-double p0, p0, p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 1374
    :cond_0
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    mul-double v0, v0, v0

    iget-wide p0, p0, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    mul-double p0, p0, p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private computeResidualsFromCurrentPoints()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qh/yctdevice/GnssParamTransform$ResidualError;",
            ">;"
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1379
    :cond_0
    new-instance v0, Lcom/qh/yctdevice/GnssParamTransform;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssParamTransform;-><init>()V

    .line 1380
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v2, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    .line 1381
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1383
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 1384
    new-instance v5, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    iget-wide v6, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iget-wide v8, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    iget-wide v10, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    invoke-direct/range {v5 .. v11}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    invoke-virtual {v0, v5}, Lcom/qh/yctdevice/GnssParamTransform;->transform3D(Lcom/qh/yctdevice/GnssParamTransform$Point3D;)Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v1

    .line 1386
    :cond_1
    new-instance v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;

    invoke-direct {v6}, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;-><init>()V

    .line 1387
    iget-wide v7, v5, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->x:D

    iget-wide v9, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    sub-double/2addr v7, v9

    iput-wide v7, v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    .line 1388
    iget-wide v7, v5, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->y:D

    iget-wide v9, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    sub-double/2addr v7, v9

    iput-wide v7, v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    .line 1389
    iget-wide v7, v5, Lcom/qh/yctdevice/GnssParamTransform$Point3D;->z:D

    iget-wide v4, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    sub-double/2addr v7, v4

    iput-wide v7, v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->z:D

    .line 1390
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1393
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 1394
    new-instance v5, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    iget-wide v6, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iget-wide v8, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/qh/yctdevice/GnssParamTransform$Point2D;-><init>(DD)V

    invoke-virtual {v0, v5}, Lcom/qh/yctdevice/GnssParamTransform;->transform2D(Lcom/qh/yctdevice/GnssParamTransform$Point2D;)Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v1

    .line 1396
    :cond_3
    new-instance v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;

    invoke-direct {v6}, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;-><init>()V

    .line 1397
    iget-wide v7, v5, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->x:D

    iget-wide v9, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    sub-double/2addr v7, v9

    iput-wide v7, v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->x:D

    .line 1398
    iget-wide v7, v5, Lcom/qh/yctdevice/GnssParamTransform$Point2D;->y:D

    iget-wide v4, v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    sub-double/2addr v7, v4

    iput-wide v7, v6, Lcom/qh/yctdevice/GnssParamTransform$ResidualError;->y:D

    .line 1399
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    return-object v1
.end method

.method private static copyFourDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 594
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;-><init>()V

    .line 595
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    .line 596
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    .line 597
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    .line 598
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    return-object v0
.end method

.method private static copySevenDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 604
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;-><init>()V

    .line 605
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    .line 606
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    .line 607
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    .line 608
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    .line 609
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    .line 610
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    .line 611
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    return-object v0
.end method

.method private static doubleEquals(DD)Z
    .locals 1

    sub-double/2addr p0, p2

    .line 816
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private enableConversionParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 7

    if-nez p1, :cond_0

    .line 1533
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1536
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->selectMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1539
    const-string v2, "localId"

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1540
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1541
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1542
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1545
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1547
    sget p1, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1548
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1551
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyTransParamToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 1552
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyTransformParamsToDevice(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1553
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 1554
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1555
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 1557
    :cond_3
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 1559
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1561
    :cond_4
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1562
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private focusNameInputAndShowKeyboard()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private formatManualValue(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 695
    const-string p1, "0"

    return-object p1

    .line 696
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "%.9f"

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0+$"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\.$"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyboardTopOnScreen()I
    .locals 9

    .line 1313
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1314
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1315
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1316
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1317
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v1

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3fbeb851eb851eb8L    # 0.12

    mul-double v6, v6, v4

    cmpl-double v8, v2, v6

    if-lez v8, :cond_0

    return v1

    :cond_0
    const-wide v1, 0x3fd851eb851eb852L    # 0.38

    mul-double v4, v4, v1

    double-to-int v1, v4

    sub-int/2addr v0, v1

    return v0
.end method

.method private hasFilledControlPointInList()Z
    .locals 7

    .line 820
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    if-nez v1, :cond_1

    goto :goto_0

    .line 822
    :cond_1
    iget-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v1, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    cmpl-double v3, v1, v4

    if-eqz v3, :cond_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private importControlPointsFromCsv(Landroid/net/Uri;)V
    .locals 1

    .line 972
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 974
    :try_start_1
    sget v0, Lcom/qianhe/yct/R$string;->import_control_points_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 978
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 977
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->importControlPointsFromStream(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    .line 972
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 979
    :catch_0
    sget p1, Lcom/qianhe/yct/R$string;->import_control_points_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private importControlPointsFromCsvPath(Ljava/lang/String;)V
    .locals 1

    .line 984
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 986
    sget p1, Lcom/qianhe/yct/R$string;->import_control_points_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 989
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :try_start_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->importControlPointsFromStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 989
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 992
    :catch_0
    sget p1, Lcom/qianhe/yct/R$string;->import_control_points_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private importControlPointsFromStream(Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 997
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->syncVisiblePointsFromViews(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 998
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 999
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1001
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1002
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1006
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->parseImportControlPointLine(Ljava/lang/String;)Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1008
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1012
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1013
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1014
    sget p1, Lcom/qianhe/yct/R$string;->import_control_points_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1017
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashControlPointStateToCache(I)V

    .line 1018
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1019
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1020
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 1021
    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_5

    .line 1022
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    new-instance v4, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v4}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1024
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1025
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clearCalculatedResult()V

    .line 1026
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateCurrentParamTypeCache()V

    .line 1027
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->validateControlPointDistances()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1028
    sget p1, Lcom/qianhe/yct/R$string;->control_point_min_distance:I

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 1031
    :cond_6
    sget p1, Lcom/qianhe/yct/R$string;->import_control_points_success:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 999
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method private initCollectLauncher()V
    .locals 2

    .line 209
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->collectLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initControlInputKeyboardScroll()V
    .locals 2

    .line 1273
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1274
    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    iput-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlInputScrollLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1285
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlInputScrollLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initControlPoints()V
    .locals 4

    .line 266
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 276
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 279
    new-instance v0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    .line 280
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setSevenParamMode(Z)V

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setOnInputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;)V

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setCallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;)V

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initControlPointsFromEntity()V
    .locals 8

    .line 860
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 861
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    .line 862
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 863
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-ne v0, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPointsForParamType(Z)V

    return-void

    .line 866
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    .line 867
    new-instance v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v5}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    .line 868
    iget-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    iput-wide v6, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    .line 869
    iget-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    iput-wide v6, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    .line 870
    iget-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    iput-wide v6, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    .line 871
    iget-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    iput-wide v6, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    .line 872
    iget-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    iput-wide v6, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    .line 873
    iget-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    iput-wide v6, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    .line 874
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 876
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 877
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 878
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    new-instance v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v5}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 880
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-ne v1, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setSevenParamMode(Z)V

    .line 881
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initCreateMode()V
    .locals 6

    .line 197
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iput v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rgCreateMode:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-ne v1, v4, :cond_1

    sget v1, Lcom/qianhe/yct/R$id;->rbManualInput:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/qianhe/yct/R$id;->rbControlPoint:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 204
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateManualParamTypeVisibility()V

    .line 205
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateCreateModeUi()V

    return-void
.end method

.method private initCsvImportLauncher()V
    .locals 2

    .line 224
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->csvImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initListeners()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rgCreateMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 420
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->spParamType:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 438
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvImportCsv:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->ivImportCsvDoubt:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvCalculate:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    const-string v2, "defaultname"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private initParamTypeCachesFromEntity()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->copySevenDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    .line 516
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clonePointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsSevenCache:Ljava/util/List;

    .line 517
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenParamsDetail:Ljava/lang/String;

    .line 518
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenCalculated:Z

    .line 519
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenResiduals:Ljava/util/List;

    return-void

    .line 521
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->copyFourDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    .line 522
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clonePointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsFourCache:Ljava/util/List;

    .line 523
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourParamsDetail:Ljava/lang/String;

    .line 524
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourCalculated:Z

    .line 525
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourResiduals:Ljava/util/List;

    return-void
.end method

.method private initParamTypeSpinner()V
    .locals 3

    .line 258
    sget v0, Lcom/qianhe/yct/R$string;->four_params:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->seven_params:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 260
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->spParamType:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->spParamType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private isAutoCreatedDefaultEngineeringInUse()Z
    .locals 6

    .line 1485
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1486
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 1489
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isDefaultEngineeringName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultEngineeringName(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 1497
    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 1500
    :cond_1
    new-array v2, v0, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v4, v2, v3

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    aput-object v4, v2, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 1505
    aget-object v5, v2, v4

    .line 1506
    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1507
    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1508
    invoke-virtual {p0, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1509
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/2addr v4, v1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private isManualParamsAllDefaultValues()Z
    .locals 10

    .line 700
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 701
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 702
    iget-object v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualScale:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmpl-double v9, v0, v7

    if-nez v9, :cond_3

    cmpl-double v0, v2, v7

    if-nez v0, :cond_3

    cmpl-double v0, v4, v7

    if-eqz v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDz:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRz:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v6

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRotation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double v0, v2, v7

    if-nez v0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v6
.end method

.method private isManualParamsModifiedFromBaseline()Z
    .locals 4

    .line 792
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 793
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineSeven:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    if-nez v0, :cond_0

    return v2

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineSeven:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-static {v3, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSameSevenParams(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineFour:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    if-nez v0, :cond_4

    return v2

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 799
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualBaselineFour:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-static {v3, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSameFourParams(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method private static isSameFourParams(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Z
    .locals 4

    .line 804
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    .line 805
    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    iget-wide p0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    invoke-static {v0, v1, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSameSevenParams(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Z
    .locals 4

    .line 810
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    .line 811
    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    iget-wide p0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    .line 812
    invoke-static {v0, v1, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->doubleEquals(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSevenParam()Z
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->spParamType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1215
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isValidSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1219
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadEntityToUi()V
    .locals 6

    .line 457
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 458
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 460
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->computeResidualsFromCurrentPoints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    .line 462
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    .line 463
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 464
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-ne v0, v2, :cond_1

    .line 465
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 468
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initParamTypeCachesFromEntity()V

    .line 469
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-ne v0, v2, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->loadManualParamsToUi()V

    .line 471
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->captureManualParamsBaselineFromUi()V

    :cond_2
    return-void
.end method

.method private loadManualParamsToUi()V
    .locals 6

    .line 676
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 677
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    .line 678
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDx:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDy:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDz:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRx:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    goto :goto_3

    :cond_3
    move-wide v4, v2

    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRy:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_4

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    goto :goto_4

    :cond_4
    move-wide v4, v2

    :goto_4
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRz:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_5

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    goto :goto_5

    :cond_5
    move-wide v4, v2

    :goto_5
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualScale:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_6

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    invoke-static {v2, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToPpm(D)D

    move-result-wide v2

    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 686
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    .line 687
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDx:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_8

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    goto :goto_6

    :cond_8
    move-wide v4, v2

    :goto_6
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDy:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_9

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    goto :goto_7

    :cond_9
    move-wide v4, v2

    :goto_7
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRotation:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_a

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    goto :goto_8

    :cond_a
    move-wide v4, v2

    :goto_8
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualScale:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v0, :cond_b

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    invoke-static {v2, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToPpm(D)D

    move-result-wide v2

    :cond_b
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->formatManualValue(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private logControlPointsForCalculate(Ljava/lang/String;)V
    .locals 4

    .line 1326
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->seven_params:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->four_params:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->calculate_params:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/qianhe/yct/R$string;->calculate_params:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1328
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->buildControlPointEntities()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->formatControlPointsCsv(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private onParamTypeChanged(I)V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 490
    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 491
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashManualParamsToCache(I)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashControlPointStateToCache(I)V

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput p1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 496
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-ne v0, v2, :cond_1

    .line 497
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->loadManualParamsToUi()V

    .line 498
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyManualCacheToEntity(I)V

    .line 499
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->captureManualParamsBaselineFromUi()V

    goto :goto_2

    .line 501
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->restoreControlPointStateFromCache(I)V

    .line 502
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->showCalculatedResult()V

    goto :goto_1

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltResult:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 509
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setSevenParamMode(Z)V

    .line 510
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateManualParamTypeVisibility()V

    return-void
.end method

.method private parseImportControlPointLine(Ljava/lang/String;)Lcom/qianhe/yct/bean/ConverParamsControlPointInput;
    .locals 9

    .line 1040
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1041
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1042
    array-length v0, p1

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    array-length v0, p1

    if-eq v0, v2, :cond_1

    return-object v1

    .line 1045
    :cond_1
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1046
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 1048
    :try_start_0
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    return-object v1

    .line 1053
    :cond_2
    new-instance v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v1}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    .line 1054
    array-length p1, p1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p1, v2, :cond_3

    .line 1055
    aget-wide v7, v0, v4

    iput-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    .line 1056
    aget-wide v6, v0, v6

    iput-wide v6, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    .line 1057
    aget-wide v4, v0, v5

    iput-wide v4, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    .line 1058
    aget-wide v2, v0, v3

    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    const/4 p1, 0x4

    .line 1059
    aget-wide v2, v0, p1

    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    const/4 p1, 0x5

    .line 1060
    aget-wide v2, v0, p1

    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    return-object v1

    .line 1063
    :cond_3
    aget-wide v2, v0, v4

    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    .line 1064
    aget-wide v2, v0, v6

    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    .line 1065
    aget-wide v2, v0, v5

    iput-wide v2, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    return-object v1
.end method

.method private performCalculate()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1096
    iget-object v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 1097
    :goto_0
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    .line 1098
    :goto_1
    iget-object v5, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_3

    .line 1099
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/qianhe/yct/R$string;->seven_param_min_points:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/qianhe/yct/R$string;->four_param_min_points:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1102
    :cond_3
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v3

    invoke-direct {v0, v3}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->validateControlPoints(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1103
    sget v1, Lcom/qianhe/yct/R$string;->control_point_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_4
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->validateControlPointDistances()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1107
    sget v2, Lcom/qianhe/yct/R$string;->control_point_min_distance:I

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 1111
    :cond_5
    invoke-direct {v0, v2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->logControlPointsForCalculate(Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v3

    .line 1114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    iget-object v8, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 1119
    new-instance v10, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    iget-wide v11, v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iget-wide v13, v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    move-object/from16 v17, v2

    iget-wide v1, v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    move-wide v15, v1

    invoke-direct/range {v10 .. v16}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v18, Lcom/qh/yctdevice/GnssParamTransform$Point3D;

    iget-wide v1, v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    iget-wide v10, v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    iget-wide v12, v9, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    move-wide/from16 v19, v1

    move-wide/from16 v21, v10

    move-wide/from16 v23, v12

    invoke-direct/range {v18 .. v24}, Lcom/qh/yctdevice/GnssParamTransform$Point3D;-><init>(DDD)V

    move-object/from16 v1, v18

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v17, v2

    .line 1122
    new-instance v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    invoke-direct {v1}, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;-><init>()V

    .line 1123
    invoke-static {v6, v7, v1, v5}, Lcom/qh/yctdevice/GnssParamTransform;->computeSevenParameters(Ljava/util/List;Ljava/util/List;Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1124
    sget v1, Lcom/qianhe/yct/R$string;->calculate_params_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1127
    :cond_7
    new-instance v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;-><init>()V

    .line 1128
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dx:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    .line 1129
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dy:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    .line 1130
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dz:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    .line 1131
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rx:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    .line 1132
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->ry:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    .line 1133
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rz:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    .line 1134
    iget-wide v6, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->scale:D

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    .line 1135
    invoke-direct {v0, v2}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isValidSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1136
    sget v1, Lcom/qianhe/yct/R$string;->calculate_params_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1139
    :cond_8
    invoke-virtual {v3, v1}, Lcom/qh/yctdevice/GnssParamTransform;->setSevenParameter(Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;)V

    .line 1140
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput v4, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 1141
    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)V

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_9
    move-object/from16 v17, v2

    .line 1143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    iget-object v4, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 1146
    new-instance v7, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    iget-wide v8, v6, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iget-wide v10, v6, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/qh/yctdevice/GnssParamTransform$Point2D;-><init>(DD)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v7, Lcom/qh/yctdevice/GnssParamTransform$Point2D;

    iget-wide v8, v6, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    iget-wide v10, v6, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/qh/yctdevice/GnssParamTransform$Point2D;-><init>(DD)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1149
    :cond_a
    new-instance v4, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    invoke-direct {v4}, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;-><init>()V

    .line 1150
    invoke-static {v1, v2, v4, v5}, Lcom/qh/yctdevice/GnssParamTransform;->computeFourParameters(Ljava/util/List;Ljava/util/List;Lcom/qh/yctdevice/GnssParamTransform$FourParameter;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1151
    sget v1, Lcom/qianhe/yct/R$string;->calculate_params_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1154
    :cond_b
    new-instance v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;-><init>()V

    .line 1155
    iget-wide v6, v4, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dx:D

    iput-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    .line 1156
    iget-wide v6, v4, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dy:D

    iput-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    .line 1157
    iget-wide v6, v4, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->r:D

    iput-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    .line 1158
    iget-wide v6, v4, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->scale:D

    iput-wide v6, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    .line 1159
    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isValidFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1160
    sget v1, Lcom/qianhe/yct/R$string;->calculate_params_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1163
    :cond_c
    invoke-virtual {v3, v4}, Lcom/qh/yctdevice/GnssParamTransform;->setFourParameter(Lcom/qh/yctdevice/GnssParamTransform$FourParameter;)V

    .line 1164
    iget-object v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const/4 v3, 0x1

    iput v3, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 1165
    invoke-virtual {v2, v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)V

    .line 1167
    :goto_5
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-object/from16 v2, v17

    iput-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 1168
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->buildControlPointEntities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setControlPointList(Ljava/util/List;)V

    .line 1169
    iput-object v5, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    .line 1170
    iput-boolean v3, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    .line 1171
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->syncManualCacheFromEntity(I)V

    .line 1172
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->updateCurrentParamTypeCache()V

    .line 1173
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->updateTransParamCache(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 1174
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->showCalculatedResult()V

    .line 1175
    iget-object v1, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private performScrollInputAboveKeyboard(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1300
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1302
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->getKeyboardTopOnScreen()I

    move-result v1

    const/4 v2, 0x2

    .line 1303
    new-array v2, v2, [I

    .line 1304
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    .line 1305
    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    sub-int p1, v1, v0

    if-le v2, p1, :cond_1

    .line 1307
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private promptEnableAfterCreate(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 7

    .line 1517
    sget v0, Lcom/qianhe/yct/R$string;->want_to_enable_conversion_params:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->enable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private readFourParamsFromUi()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;
    .locals 3

    .line 632
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    .line 634
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    .line 635
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRotation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    .line 636
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualScale:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scalePpmToK(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    return-object v0
.end method

.method private readSevenParamsFromUi()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;
    .locals 3

    .line 641
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;-><init>()V

    .line 642
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    .line 643
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    .line 644
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualDz:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    .line 645
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    .line 646
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    .line 647
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualRz:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    .line 648
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtManualScale:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scalePpmToK(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    return-object v0
.end method

.method private resetPendingPick()V
    .locals 1

    const/4 v0, -0x1

    .line 967
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    const/4 v0, 0x0

    .line 968
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    return-void
.end method

.method private resetPointsForParamType(Z)V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    new-instance v2, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    invoke-direct {v2}, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 854
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    if-eqz p1, :cond_2

    .line 855
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private restoreControlPointStateFromCache(I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsSevenCache:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsFourCache:Ljava/util/List;

    .line 571
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 573
    iget-object v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clonePointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 575
    :goto_1
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->resetPointsForParamType(Z)V

    .line 577
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-ne p1, v0, :cond_3

    iget-object v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenParamsDetail:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourParamsDetail:Ljava/lang/String;

    :goto_3
    iput-object v4, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    if-ne p1, v0, :cond_4

    .line 578
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenCalculated:Z

    goto :goto_4

    :cond_4
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourCalculated:Z

    :goto_4
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    if-ne p1, v0, :cond_5

    .line 579
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenResiduals:Ljava/util/List;

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourResiduals:Ljava/util/List;

    :goto_5
    iput-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    .line 580
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    if-ne p1, v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {v1, v2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->setSevenParamMode(Z)V

    .line 581
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private saveParams()V
    .locals 7

    .line 1420
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1421
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    sget v0, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "defaultname"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 1425
    :cond_1
    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-nez v1, :cond_2

    .line 1426
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    if-nez v1, :cond_3

    .line 1427
    sget v0, Lcom/qianhe/yct/R$string;->please_calculate_first:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1430
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->applyManualParamsFromUi()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 1433
    :cond_3
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1434
    iget-wide v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 1435
    sget v0, Lcom/qianhe/yct/R$string;->param_name_already_exists:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1439
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 1440
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    if-nez v0, :cond_5

    .line 1441
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->syncVisiblePointsFromViews(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1442
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->buildControlPointEntities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setControlPointList(Ljava/util/List;)V

    .line 1444
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    .line 1445
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    .line 1446
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 1447
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    .line 1448
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)I

    move-result v0

    if-gtz v0, :cond_8

    .line 1450
    sget v0, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1454
    :cond_6
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insertGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-gtz v2, :cond_7

    .line 1456
    sget v0, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1459
    :cond_7
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 1462
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->uploadTransParamToServerAsync(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 1464
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->selectMode:Z

    if-eqz v0, :cond_9

    .line 1465
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->promptEnableAfterCreate(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void

    .line 1469
    :cond_9
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isAutoCreatedDefaultEngineeringInUse()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1470
    sget v0, Lcom/qianhe/yct/R$string;->saved_successfully:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1471
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1474
    :cond_a
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentTransParam()Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    .line 1475
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_b

    iget-wide v5, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 1476
    :cond_b
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->promptEnableAfterCreate(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void

    .line 1478
    :cond_c
    sget v0, Lcom/qianhe/yct/R$string;->saved_successfully:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1479
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private scrollInputAboveKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1290
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->focusedControlInput:Landroid/view/View;

    const/4 v0, -0x1

    .line 1291
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastKeyboardTop:I

    .line 1292
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->performScrollInputAboveKeyboard(Landroid/view/View;)V

    .line 1293
    new-instance v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1294
    new-instance v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1295
    new-instance v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda15;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1296
    new-instance v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda16;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollToLastControlPointItem()V
    .locals 2

    .line 1249
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda17;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scrollToResult()V
    .locals 2

    .line 1244
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultConverParamsName()V
    .locals 6

    .line 1080
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object v0

    .line 1082
    iget-wide v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1085
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1086
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->param:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isGnssTransParamNameExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private shouldClearControlPointsOnManualSave()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->hasFilledControlPointInList()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 788
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isManualParamsModifiedFromBaseline()Z

    move-result v0

    return v0
.end method

.method private showCalculatedResult()V
    .locals 2

    .line 1238
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltResult:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvResult:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->buildResultText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->scrollToResult()V

    return-void
.end method

.method private showCollectMethodDialog()V
    .locals 4

    .line 334
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->dialog_select_collect_method:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 335
    sget v1, Lcom/qianhe/yct/R$id;->toothView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/view/ToothView;

    .line 336
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 340
    :cond_0
    new-instance v2, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda18;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/ToothView;->setOnToothClickListener(Lcom/qianhe/yct/view/ToothView$OnToothClickListener;)V

    .line 353
    new-instance v2, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda19;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/view/ToothView;->setOnToothLongClickListener(Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;)V

    .line 358
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startCollectDestination(I)V
    .locals 3

    .line 362
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 363
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qianhe/yct/activity/CollectCoordsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    const-string/jumbo v2, "toothType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string p1, "returnGeodetic"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->collectLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private startInstrumentCollectDestination(Z)V
    .locals 1

    .line 375
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 376
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    .line 377
    new-instance v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda21;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectWithPoleHeight(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void

    .line 387
    :cond_1
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollect(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void
.end method

.method private startPointLibraryDestination()V
    .locals 2

    .line 392
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingCollectPosition:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 393
    iput v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingPickTarget:I

    .line 394
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->collectLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointLibraryIntent;->pickPoint(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private stashControlPointStateToCache(I)V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->rcvControlPoints:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->syncVisiblePointsFromViews(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 557
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clonePointList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsSevenCache:Ljava/util/List;

    .line 558
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenParamsDetail:Ljava/lang/String;

    .line 559
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenCalculated:Z

    .line 560
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedSevenResiduals:Ljava/util/List;

    return-void

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->clonePointList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlPointsFourCache:Ljava/util/List;

    .line 563
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourParamsDetail:Ljava/lang/String;

    .line 564
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourCalculated:Z

    .line 565
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->lastResiduals:Ljava/util/List;

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->cachedFourResiduals:Ljava/util/List;

    return-void
.end method

.method private stashManualParamsToCache(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->readSevenParamsFromUi()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    return-void

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->readFourParamsFromUi()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    return-void
.end method

.method private syncManualCacheFromEntity(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 540
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->copySevenDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    return-void

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->copyFourDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    return-void
.end method

.method private syncManualParamsFromUiToEntity()V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashManualParamsToCache(I)V

    .line 715
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 716
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualSevenCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)V

    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->manualFourCache:Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)V

    return-void
.end method

.method private updateCreateModeUi()V
    .locals 6

    .line 653
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 654
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->llControlPointSection:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->llManualParams:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvCalculate:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v5, 0x8

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 661
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltResult:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->tvSave:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->paramsCalculated:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private updateCurrentParamTypeCache()V
    .locals 2

    .line 585
    iget v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->createMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashManualParamsToCache(I)V

    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->stashControlPointStateToCache(I)V

    return-void
.end method

.method private updateManualParamTypeVisibility()V
    .locals 5

    .line 667
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->isSevenParam()Z

    move-result v0

    .line 668
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltManualDz:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltManualRotation:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltManualRx:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltManualRy:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->lltManualRz:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private uploadTransParamToServerAsync(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1581
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 1582
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1583
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void

    .line 1585
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private validateControlPointDistances()Z
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 1200
    :goto_0
    iget-object v3, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1201
    iget-object v3, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    .line 1202
    :goto_1
    iget-object v5, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1203
    iget-object v5, v0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 1204
    iget-wide v6, v3, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iget-wide v8, v3, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    iget-wide v10, v3, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    iget-wide v12, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    iget-wide v14, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    move/from16 v19, v2

    const/16 v18, 0x0

    iget-wide v1, v5, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    move-wide/from16 v16, v1

    invoke-static/range {v6 .. v17}, Lcom/qianhe/baselib/utils/GeoCoordsDistanceUtils;->calculateEcefDistance3D(DDDDDD)D

    move-result-wide v1

    .line 1205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u63a7\u5236\u70b9\u8ddd\u79bb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double v9, v1, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u7c73"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1206
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_1

    mul-double v1, v1, v7

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpg-double v5, v1, v7

    if-gez v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1

    :cond_1
    :goto_2
    return v18

    :cond_2
    move v6, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private validateControlPoints(Z)Z
    .locals 10

    .line 1179
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_4

    .line 1181
    iget-wide v5, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_1

    iget-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    cmpl-double v9, v7, v3

    if-eqz v9, :cond_3

    :cond_1
    iget-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    cmpl-double v9, v7, v3

    if-eqz v9, :cond_3

    iget-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    cmpl-double v9, v7, v3

    if-nez v9, :cond_2

    goto :goto_0

    .line 1184
    :cond_2
    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    :goto_0
    return v2

    .line 1188
    :cond_4
    iget-wide v5, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_5

    iget-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    cmpl-double v9, v7, v3

    if-eqz v9, :cond_7

    :cond_5
    iget-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    cmpl-double v9, v7, v3

    if-eqz v9, :cond_7

    iget-wide v7, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    cmpl-double v9, v7, v3

    if-nez v9, :cond_6

    goto :goto_1

    .line 1191
    :cond_6
    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-wide v3, v1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    :goto_1
    return v2

    :cond_8
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 886
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/activity/ConverParamsCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 6

    .line 1591
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->modify_conver_params:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->create_conver_params:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1592
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    sget-object p1, Lcom/leon/lfilepickerlibrary/utils/Constant;->RESULT_INFO:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 253
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->importControlPointsFromCsvPath(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 895
    sget v0, Lcom/qianhe/yct/R$string;->exit_page:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "back"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "localId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selectMode"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->selectMode:Z

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    .line 132
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    const/4 p1, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 137
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingShowNameKeyboard:Z

    const/16 v0, 0x22

    goto :goto_0

    .line 141
    :cond_0
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingShowNameKeyboard:Z

    const/16 v0, 0x23

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 145
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 146
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-wide v5, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    invoke-virtual {v0, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "paramType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eq v0, p1, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    :cond_2
    move p1, v0

    :cond_3
    iput p1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initName:Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initCollectLauncher()V

    .line 155
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initCsvImportLauncher()V

    .line 156
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initParamTypeSpinner()V

    .line 157
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initCreateMode()V

    .line 158
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initControlPoints()V

    .line 159
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initControlPointsFromEntity()V

    .line 160
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initControlInputKeyboardScroll()V

    .line 161
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->initListeners()V

    .line 162
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->loadEntityToUi()V

    .line 164
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 165
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    .line 166
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1609
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlInputScrollLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->controlInputScrollLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1612
    :cond_0
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1613
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingShowNameKeyboard:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->pendingShowNameKeyboard:Z

    .line 176
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->focusNameInputAndShowKeyboard()V

    return-void

    .line 177
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsCreateBinding;->nsv:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

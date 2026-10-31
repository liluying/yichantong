.class public Lcom/qianhe/yct/activity/EngineeringCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "EngineeringCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;,
        Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

.field private builtInCoordSystems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/CoordSystemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private centralMeridianZoneWidth:I

.field private converParamsLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private conversionSpinnerUserReady:Z

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private defaultEngineeringReadonly:Z

.field private ellipsoidOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;",
            ">;"
        }
    .end annotation
.end field

.field private ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

.field private final gson:Lcom/google/gson/Gson;

.field private initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field private lastConversionSpinnerPosition:I

.field private lastProjectionPosition:I

.field private mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;


# direct methods
.method public static synthetic $r8$lambda$AN3NiNcBaoe0QJZnpsP8NsGnp14(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez p1, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 308
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic $r8$lambda$Ad_fk0T3ZyBWMQ-iBr0d4uTXF_U(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 2

    .line 916
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    .line 916
    iget-object v0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->nsvContent:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$D11K3uOvo_5OfIDVydGu5P1vMkw(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    const-string v0, "defaultname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 337
    const-string v0, "manual_cancel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p1, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setDefaultName()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 341
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 342
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$E6sC_a5HNFG1oGBd6hQIYXyw1jA(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->openConversionParamsList()V

    return-void
.end method

.method public static synthetic $r8$lambda$EK2bvAH__Hcxgykk_7kWFhZxpG4(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 852
    invoke-direct {p0, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->onConversionSpinnerDropdownClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H2c8hAVEOdqkmHtwroljWMIg-AA(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 661
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->hideSoftInput(Landroid/view/View;)V

    .line 662
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 663
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$J7_6obCmpIYhHzp0GTl2AstS2QA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$O_2Alk8443RqzDYPFxvgoeNGKZY(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 521
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 525
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->showEllipsoidPicker()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic $r8$lambda$QfU-oR3xo7FTQLsW8_QTnNUxF6Q(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->conversionSpinnerUserReady:Z

    return-void
.end method

.method public static synthetic $r8$lambda$WH0qFVrlrcRb-OZB21ekkkiTK7k(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->refreshCentralMeridian()V

    return-void
.end method

.method public static synthetic $r8$lambda$XYomvDCP2urabiV7RBo8sK-Wcks(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyEngineering()V

    return-void
.end method

.method public static synthetic $r8$lambda$c0pCQrP_KpEhRs5tqPLomGbVves(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1264
    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$iafVsfv5RdB7md6zSTUMWijlDoI(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 361
    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$jae--lt6ccj6Xo8yN_mf-rJOSM0(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->hideSoftInput(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$k4R5tck9R3ydJE3zCyq9R4YOQeo(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "localId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyTransParamToEntity(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 288
    iget v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    .line 289
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 290
    iget p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->updateConversionSelectVisibility(I)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->syncConversionParamsInfoBar()V

    return-void
.end method

.method public static synthetic $r8$lambda$kVbpP1nLGLOQYWn5hFULxQLa2Sw(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 855
    invoke-direct {p0, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->onConversionSpinnerDropdownClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l92p8GKdyak2UhjW3vms1EYVg84(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->refreshUtmZone()V

    return-void
.end method

.method public static synthetic $r8$lambda$m-zIGcUyJ6WTGEO60e1dSwK2Bbs(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V
    .locals 0

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->scrollEllipsoidListToSelected(Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFOf84vc4K5hx3lgjO7BWcEjoek(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->openConversionParamsList()V

    return-void
.end method

.method public static synthetic $r8$lambda$vd6Iz0Kk7FLSr741m1lZXTwhGFk(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 2

    .line 343
    const-string v0, "input_method"

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 345
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$wXFTLTjMMbkIPFrwXfu8hW4V-uo(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;ILandroid/widget/ListView;)V
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getCount()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 703
    invoke-virtual {p2, p1, p0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$xUGfEqhvp7t0ytGBo-jk9XOn6cU(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    invoke-virtual {p1, p6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getItem(I)Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 623
    :cond_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->hideSoftInput(Landroid/view/View;)V

    .line 624
    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 625
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    iget p1, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->absoluteIndex:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zm42ugLSt7Pv9WipRh4zn6WdMX8(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->restoreCustomEllipsoidUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuiltInCoordSystems(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->builtInCoordSystems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconversionSpinnerUserReady(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->conversionSpinnerUserReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastConversionSpinnerPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastProjectionPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastProjectionPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntity(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastConversionSpinnerPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastProjectionPosition(Lcom/qianhe/yct/activity/EngineeringCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastProjectionPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyBuiltInCoordSystem(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/bean/CoordSystemEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyBuiltInCoordSystem(Lcom/qianhe/yct/bean/CoordSystemEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyConversionTypeSelection(Lcom/qianhe/yct/activity/EngineeringCreateActivity;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyConversionTypeSelection(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplySpinnerItemStyle(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applySpinnerItemStyle(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillCentralMeridianPreferLocation(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->fillCentralMeridianPreferLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillUtmParamsFromLocation(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->fillUtmParamsFromLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollEllipsoidListToSelected(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->scrollEllipsoidListToSelected(Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCentralMeridianZoneLabel(Lcom/qianhe/yct/activity/EngineeringCreateActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->updateCentralMeridianZoneLabel(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->gson:Lcom/google/gson/Gson;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    .line 96
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->builtInCoordSystems:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidOptions:Ljava/util/List;

    const/4 v0, 0x3

    .line 99
    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->centralMeridianZoneWidth:I

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastProjectionPosition:I

    return-void
.end method

.method private applyBuiltInCoordSystem(Lcom/qianhe/yct/bean/CoordSystemEntity;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llCustomEllipsoid:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtA:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v2, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->a:D

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtF:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/bean/CoordSystemEntity;->flattening()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 728
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llGaussParams:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llUtmParams:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    invoke-virtual {p1}, Lcom/qianhe/yct/bean/CoordSystemEntity;->zoneWidthDegrees()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->updateCentralMeridianZoneLabel(I)V

    .line 732
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->resolveCentralMeridian(Lcom/qianhe/yct/bean/CoordSystemEntity;)D

    move-result-wide v0

    .line 733
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->resolveOriginLatitude(Lcom/qianhe/yct/bean/CoordSystemEntity;)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v1, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->fe:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v1, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->fn:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v1, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->k0:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "1.0"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private applyConversionTypeSelection(IZ)V
    .locals 1

    .line 900
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->updateConversionSelectVisibility(I)V

    if-nez p1, :cond_0

    .line 902
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    const/4 p2, 0x0

    iput p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 903
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->clearConversionSelection()V

    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-eq v0, p1, :cond_1

    .line 907
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->clearConversionSelection()V

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-nez p2, :cond_2

    return-void

    .line 911
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->scrollToConversionSelect()V

    .line 912
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda21;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private applyDefaultEngineeringReadonlyUi()V
    .locals 4

    .line 177
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->isAutoCreatedDefaultEngineering()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    .line 178
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvDefaultEngineeringTip:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvApply:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    if-nez v0, :cond_1

    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ensureDefaultEngineeringCentralMeridian()V

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivReset:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivUtmRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtF:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->cbIsNorth:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setEditTextReadonly(Landroid/widget/TextView;)V

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lockSpinnerInteraction(Landroid/widget/AdapterView;)V

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lockSpinnerInteraction(Landroid/widget/AdapterView;)V

    .line 201
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lockSpinnerInteraction(Landroid/widget/AdapterView;)V

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lockSpinnerInteraction(Landroid/widget/AdapterView;)V

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivEllipsoidArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivDeformationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivProjectionArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivConversionTypeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivConversionSelectArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvApply:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private applyEngineering()V
    .locals 14

    .line 1069
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1073
    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1074
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1075
    sget v0, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultname"

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 1079
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1080
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringNameExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1081
    sget v0, Lcom/qianhe/yct/R$string;->project_name_already_exists:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1085
    :cond_4
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v0, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v4, 0x5

    if-lt v0, v4, :cond_5

    goto :goto_1

    .line 1100
    :cond_5
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput v0, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 1101
    iput-object v3, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    goto :goto_2

    .line 1089
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    .line 1090
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtF:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    .line 1091
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->validateCustomEllipsoidParams(DD)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 1094
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 1095
    new-instance v0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;-><init>()V

    .line 1096
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    .line 1097
    iput-wide v6, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    .line 1098
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v0, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    .line 1103
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1104
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v5, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 1105
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v4, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    .line 1106
    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->validateCentralMeridian(D)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    .line 1109
    :cond_8
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v4, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    .line 1110
    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->validateOriginLatitude(D)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_3
    return-void

    .line 1114
    :cond_9
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v4}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    .line 1116
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getGnssCoordConvert()Lcom/qh/yctdevice/GnssCoordConvert;

    move-result-object v4

    .line 1117
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v10, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    if-nez v10, :cond_a

    iget-object v9, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz v9, :cond_a

    .line 1119
    iget-wide v10, v9, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    iget-wide v12, v9, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoid(DD)V

    goto :goto_4

    .line 1121
    :cond_a
    invoke-virtual {v4, v10}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoid(I)V

    .line 1124
    :goto_4
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v9, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    if-ne v9, v5, :cond_c

    .line 1125
    new-instance v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;-><init>()V

    .line 1126
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-nez v13, :cond_b

    const/4 v9, 0x1

    goto :goto_5

    :cond_b
    double-to-int v9, v9

    .line 1127
    :goto_5
    iput v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    .line 1128
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->cbIsNorth:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    iput-boolean v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    .line 1129
    iput-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    .line 1130
    iput v0, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    .line 1131
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    .line 1133
    new-instance v0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;-><init>()V

    .line 1134
    iget v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    iput v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->zone:I

    .line 1135
    iget-boolean v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    iput-boolean v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->isNorth:Z

    .line 1136
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->projectionHeight:D

    .line 1137
    iget v5, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    iput v5, v0, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->deformationMethod:I

    .line 1138
    invoke-virtual {v4, v0}, Lcom/qh/yctdevice/GnssCoordConvert;->setProjection(Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;)V

    goto/16 :goto_6

    :cond_c
    if-ne v9, v6, :cond_d

    .line 1140
    new-instance v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;-><init>()V

    .line 1141
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    .line 1142
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    .line 1143
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    .line 1144
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    .line 1145
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    .line 1146
    iput-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    .line 1147
    iput v0, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    .line 1148
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    .line 1150
    new-instance v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;-><init>()V

    .line 1151
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lon0:D

    .line 1152
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lat0:D

    .line 1153
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fe:D

    .line 1154
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fn:D

    .line 1155
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->k0:D

    .line 1156
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->projectionHeight:D

    .line 1157
    iget v5, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    iput v5, v0, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->deformationMethod:I

    .line 1158
    invoke-virtual {v4, v0}, Lcom/qh/yctdevice/GnssCoordConvert;->setProjection(Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;)V

    goto :goto_6

    .line 1160
    :cond_d
    new-instance v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;-><init>()V

    .line 1161
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    .line 1162
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    .line 1163
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    .line 1164
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    .line 1165
    iget-object v9, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    iput-wide v9, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    .line 1166
    iput-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    .line 1167
    iput v0, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    .line 1168
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    .line 1170
    new-instance v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;

    invoke-direct {v0}, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;-><init>()V

    .line 1171
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lon0:D

    .line 1172
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lat0:D

    .line 1173
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fe:D

    .line 1174
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fn:D

    .line 1175
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->k0:D

    .line 1176
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    iput-wide v7, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->projectionHeight:D

    .line 1177
    iget v5, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    iput v5, v0, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->deformationMethod:I

    .line 1178
    invoke-virtual {v4, v0}, Lcom/qh/yctdevice/GnssCoordConvert;->setProjection(Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;)V

    .line 1181
    :goto_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1182
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput v0, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    const-wide/16 v7, 0x0

    if-lez v0, :cond_e

    .line 1184
    invoke-virtual {v4}, Lcom/qianhe/baselib/bean/EngineeringEntity;->hasConversionParams()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1185
    sget v0, Lcom/qianhe/yct/R$string;->please_select_conversion_params:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1189
    :cond_e
    iput-wide v7, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 1190
    iput-wide v7, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 1191
    iput-object v3, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1193
    :cond_f
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyTransformParamsToDevice()V

    .line 1194
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->uploadTransParamIfNeeded()V

    .line 1196
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 1197
    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput v6, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1198
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v6, v4, v7

    if-lez v6, :cond_10

    .line 1199
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 1200
    sget v3, Lcom/qianhe/yct/R$string;->modify_success:I

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1202
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    .line 1203
    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->insertEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)J

    move-result-wide v3

    cmp-long v5, v3, v7

    if-gtz v5, :cond_11

    .line 1205
    sget v0, Lcom/qianhe/yct/R$string;->save_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 1208
    :cond_11
    iget-object v5, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-wide v3, v5, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 1209
    sget v3, Lcom/qianhe/yct/R$string;->saved_successfully:I

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1211
    :goto_7
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    .line 1212
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {p0, v2, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->syncEngineeringToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524d\u5de5\u7a0b\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private applySpinnerItemStyle(Landroid/view/View;)V
    .locals 1

    .line 841
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 842
    check-cast p1, Landroid/widget/TextView;

    .line 843
    sget v0, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 844
    invoke-static {p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applySpinnerItemStyle(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private applyTransParamToEntity(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 946
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 947
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 948
    iput-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-void
.end method

.method private applyTransformParamsToDevice()V
    .locals 3

    .line 952
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 955
    invoke-virtual {v1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    :cond_0
    return-void
.end method

.method private buildEllipsoidOptions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;",
            ">;"
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->builtInCoordSystems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    sget v2, Lcom/qianhe/yct/R$string;->customize:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    const/4 v2, 0x1

    const-string v5, "WGS-84"

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    const/4 v2, 0x2

    const-string v4, "CGCS2000"

    const-string v5, "China"

    const-string v6, "cn"

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    const/4 v2, 0x3

    const-string v4, "XIAN 80"

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    const/4 v2, 0x4

    const-string v4, "BEIJING 54"

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->builtInCoordSystems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->builtInCoordSystems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/bean/CoordSystemEntity;

    .line 592
    new-instance v2, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    add-int/lit8 v4, v3, 0x5

    .line 594
    invoke-virtual {v1}, Lcom/qianhe/yct/bean/CoordSystemEntity;->displayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/qianhe/yct/bean/CoordSystemEntity;->country:Ljava/lang/String;

    iget-object v1, v1, Lcom/qianhe/yct/bean/CoordSystemEntity;->iso:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private clearConversionSelection()V
    .locals 3

    .line 937
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 938
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const/4 v1, 0x0

    .line 939
    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 940
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvConversionParams:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createRtlSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 821
    new-instance v0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$7;

    const v1, 0x1090008

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$7;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    const p1, 0x1090009

    .line 836
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private dismissConversionSpinnerDropdown()V
    .locals 2

    .line 889
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getConversionSpinnerPopup()Ljava/lang/Object;

    move-result-object v0

    .line 890
    instance-of v1, v0, Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    .line 891
    check-cast v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 892
    :cond_0
    instance-of v1, v0, Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_1

    .line 893
    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private ensureDefaultEngineeringCentralMeridian()V
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 235
    iget-object v6, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v6, :cond_2

    .line 236
    iget-wide v0, v6, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    .line 237
    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz v0, :cond_3

    .line 238
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    goto :goto_0

    :cond_3
    move-wide v0, v4

    :goto_0
    cmpl-double v2, v0, v4

    if-eqz v2, :cond_4

    goto :goto_1

    .line 242
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->resolveLonForDefaultCentralMeridian()D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-nez v2, :cond_5

    :goto_1
    return-void

    .line 244
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->getCentralMeridian(D)I

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    if-ne v2, v3, :cond_7

    .line 246
    iget-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-nez v2, :cond_6

    .line 247
    new-instance v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;-><init>()V

    iput-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    .line 249
    :cond_6
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    goto :goto_2

    .line 251
    :cond_7
    iget-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-nez v2, :cond_8

    .line 252
    new-instance v2, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;-><init>()V

    iput-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    .line 254
    :cond_8
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    .line 256
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    int-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 258
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_9

    .line 259
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 261
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9ed8\u8ba4\u5de5\u7a0b\u4e2d\u592e\u5b50\u5348\u7ebf\u5df2\u6309\u5750\u6807\u66f4\u65b0\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private fillCentralMeridianFromLocation()V
    .locals 5

    .line 431
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getCurrentLonLat()[D

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 432
    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    iget v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->centralMeridianZoneWidth:I

    invoke-direct {p0, v1, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getCentralMeridianByZone(DI)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private fillCentralMeridianPreferLocation()V
    .locals 5

    .line 442
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getCurrentLonLat()[D

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 443
    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    iget v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->centralMeridianZoneWidth:I

    invoke-direct {p0, v1, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getCentralMeridianByZone(DI)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 450
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, v0, 0x6

    add-int/lit16 v0, v0, -0xb7

    int-to-double v0, v0

    .line 454
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    iget v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->centralMeridianZoneWidth:I

    invoke-direct {p0, v0, v1, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getCentralMeridianByZone(DI)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private fillUtmParamsFromLocation()V
    .locals 8

    .line 462
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getCurrentLonLat()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 464
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_1

    .line 465
    iget-object v6, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v6, v6, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->getUtmZone(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->cbIsNorth:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    cmpl-double v0, v6, v4

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private formatParamDouble(D)Ljava/lang/String;
    .locals 0

    .line 758
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCentralMeridianByZone(DI)I
    .locals 3

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    div-double/2addr p1, v1

    .line 473
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, -0x3

    return p1

    .line 476
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->getCentralMeridian(D)I

    move-result p1

    return p1
.end method

.method private getConversionSpinnerPopup()Ljava/lang/Object;
    .locals 4

    .line 873
    const-string v0, "mPopup"

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 874
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 875
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 876
    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 879
    :catch_0
    :try_start_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 881
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentLonLat()[D
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 407
    iget-wide v7, v2, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    goto :goto_1

    :cond_1
    move-wide v7, v3

    :goto_1
    cmpl-double v2, v5, v3

    if-nez v2, :cond_3

    cmpl-double v2, v7, v3

    if-nez v2, :cond_3

    .line 409
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v9, "current_coords"

    const-string v10, ""

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 412
    :try_start_0
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 413
    array-length v9, v2

    if-lez v9, :cond_2

    .line 414
    aget-object v9, v2, v1

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    .line 416
    :cond_2
    :goto_2
    array-length v9, v2

    if-le v9, v0, :cond_3

    .line 417
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    cmpl-double v2, v5, v3

    if-nez v2, :cond_4

    cmpl-double v2, v7, v3

    if-nez v2, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v2, 0x2

    .line 426
    new-array v2, v2, [D

    aput-wide v5, v2, v1

    aput-wide v7, v2, v0

    return-object v2
.end method

.method private hideSoftInput(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private hookConversionSpinnerDropdownClicks()V
    .locals 2

    .line 849
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->getConversionSpinnerPopup()Ljava/lang/Object;

    move-result-object v0

    .line 850
    instance-of v1, v0, Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    .line 851
    check-cast v0, Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda19;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 853
    :cond_0
    instance-of v1, v0, Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_1

    .line 854
    check-cast v0, Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda20;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method private initConverParamsLauncher()V
    .locals 2

    .line 281
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->converParamsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initConversionParamsSpinner()V
    .locals 3

    .line 796
    sget v0, Lcom/qianhe/yct/R$string;->none_conversion_params:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->four_params:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->seven_params:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->createRtlSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 798
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->hookConversionSpinnerDropdownClicks()V

    .line 799
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$6;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 816
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    return-void
.end method

.method private initDataFromEntity()V
    .locals 7

    .line 968
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    return-void

    .line 970
    :cond_0
    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 972
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 976
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->restoreCustomEllipsoidUi()V

    .line 978
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    new-instance v2, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 980
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 982
    :try_start_1
    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 988
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v4, 0x2

    if-ne v3, v2, :cond_4

    iget-object v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v2, :cond_4

    .line 990
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    invoke-direct {p0, v5, v6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    iget v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    goto/16 :goto_2

    :cond_4
    if-ne v3, v4, :cond_5

    .line 997
    iget-object v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz v2, :cond_5

    .line 1000
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    iget v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->cbIsNorth:Landroid/widget/CheckBox;

    iget-boolean v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1002
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    iget v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v3, v2, :cond_6

    .line 1004
    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz v0, :cond_6

    .line 1007
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLat0:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    invoke-direct {p0, v5, v6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseEasting:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtFalseNorthing:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtScaleFactor:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtProjHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1016
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-ltz v0, :cond_7

    if-gt v0, v4, :cond_7

    .line 1017
    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    .line 1018
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 1019
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->updateConversionSelectVisibility(I)V

    .line 1021
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->refreshConversionParamsLabel()V

    return-void
.end method

.method private initSpinners()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 507
    invoke-static {p0}, Lcom/qianhe/yct/utils/CoordSystemUtils;->loadBuiltInCoordSystems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->builtInCoordSystems:Ljava/util/List;

    .line 508
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->buildEllipsoidOptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidOptions:Ljava/util/List;

    .line 509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    iget-object v2, v2, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->label:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->createRtlSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_2
    const/4 v0, 0x3

    .line 518
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->updateCentralMeridianZoneLabel(I)V

    .line 520
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 530
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 550
    sget v0, Lcom/qianhe/yct/R$string;->none_deformation:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->scale_deformation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->expansion_deformation:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->createRtlSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spDeformation:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 555
    sget v0, Lcom/qianhe/yct/R$string;->gauss_kruger:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->utm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->transverse_mercator:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->createRtlSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 559
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spProjectionType:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivUtmRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvApply:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    const-string v2, "defaultname"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 352
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->isAutoCreatedDefaultEngineering()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->setDefaultCursor()V

    :cond_2
    return-void
.end method

.method private isAutoCreatedDefaultEngineering()Z
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 148
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->isDefaultEngineeringName(Ljava/lang/String;)Z

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

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 156
    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 159
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

    .line 164
    aget-object v5, v2, v4

    .line 165
    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 166
    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 167
    invoke-virtual {p0, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
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

.method private lockSpinnerInteraction(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 224
    new-instance v0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onConversionSpinnerDropdownClick(I)V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 861
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->dismissConversionSpinnerDropdown()V

    .line 862
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->conversionSpinnerUserReady:Z

    if-nez v0, :cond_0

    .line 863
    iput p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    .line 864
    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyConversionTypeSelection(IZ)V

    return-void

    .line 867
    :cond_0
    iput p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->lastConversionSpinnerPosition:I

    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 868
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyConversionTypeSelection(IZ)V

    return-void
.end method

.method private openConversionParamsList()V
    .locals 8

    .line 924
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    return-void

    .line 927
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    const-string v2, "selectMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    const-string v2, "paramType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 931
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    if-eqz v0, :cond_2

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 932
    :goto_1
    const-string/jumbo v0, "showCurrentUse"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 933
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->converParamsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private refreshCentralMeridian()V
    .locals 5

    .line 370
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_3

    .line 375
    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v2, :cond_1

    .line 376
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 377
    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz v0, :cond_2

    .line 378
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    goto :goto_0

    :cond_2
    move-wide v0, v3

    :goto_0
    cmpl-double v2, v0, v3

    if-eqz v2, :cond_3

    .line 381
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtLon0:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 386
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->fillCentralMeridianFromLocation()V

    return-void
.end method

.method private refreshConversionParamsLabel()V
    .locals 6

    .line 1035
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    const-string v2, ""

    if-lez v1, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    iget-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1042
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvConversionParams:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvConversionParams:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1036
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvConversionParams:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshUtmZone()V
    .locals 5

    .line 391
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtUtmZone:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->cbIsNorth:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    iget-boolean v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->fillUtmParamsFromLocation()V

    return-void
.end method

.method private resolveCentralMeridian(Lcom/qianhe/yct/bean/CoordSystemEntity;)D
    .locals 5

    .line 741
    iget-object v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->projection:Ljava/lang/String;

    .line 742
    const-string v1, "oblique"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "krovak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->lon0:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->lonc:D

    return-wide v0

    .line 743
    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->lonc:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    return-wide v0

    :cond_3
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->lon0:D

    return-wide v0
.end method

.method private resolveLonForDefaultCentralMeridian()D
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "current_coords"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 269
    :try_start_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :catch_0
    nop

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method private resolveOriginLatitude(Lcom/qianhe/yct/bean/CoordSystemEntity;)D
    .locals 5

    .line 749
    iget-object v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->projection:Ljava/lang/String;

    .line 750
    const-string v1, "oblique"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "krovak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->lat0:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->latc:D

    return-wide v0

    .line 751
    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->latc:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    return-wide v0

    :cond_3
    iget-wide v0, p1, Lcom/qianhe/yct/bean/CoordSystemEntity;->lat0:D

    return-wide v0
.end method

.method private restoreCustomEllipsoidUi()V
    .locals 4

    .line 1025
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llCustomEllipsoid:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    .line 1030
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtA:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtF:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scrollEllipsoidListToSelected(Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p2, p3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->indexOfAbsolute(I)I

    move-result p3

    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 697
    :cond_1
    invoke-virtual {p2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    const/4 v0, 0x1

    .line 698
    invoke-virtual {p1, p3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 701
    :cond_2
    new-instance v0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p2, p3, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda22;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;ILandroid/widget/ListView;)V

    .line 705
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 706
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private scrollToConversionSelect()V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda23;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultCursor()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultName()V
    .locals 6

    .line 485
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    goto :goto_0

    .line 490
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->engineering:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string v2, "engineering"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 493
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

    .line 496
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 499
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    return-void
.end method

.method private setEditTextReadonly(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private showEllipsoidPicker()V
    .locals 7

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 606
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->dialog_ellipsoid_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 607
    sget v1, Lcom/qianhe/yct/R$id;->edtSearch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 608
    sget v2, Lcom/qianhe/yct/R$id;->lvEllipsoid:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 610
    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spEllipsoid:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 611
    new-instance v4, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iget-object v5, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidOptions:Ljava/util/List;

    invoke-direct {v4, p0, v5, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 612
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v5, 0x1

    .line 613
    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 615
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 618
    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 620
    new-instance v5, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0, v4, v1, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 628
    new-instance v5, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$4;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 652
    new-instance v5, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda16;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 660
    new-instance v5, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, v1, v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda17;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 667
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 668
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x106000d

    .line 670
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 671
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 672
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3f6b851f    # 0.92f

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 673
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const v6, 0x3f3851ec    # 0.72f

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 674
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 678
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 679
    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$5;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 689
    new-instance v0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda18;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Landroid/widget/ListView;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private syncConversionParamsInfoBar()V
    .locals 5

    .line 1050
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1051
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-lez v2, :cond_0

    iget v3, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iput-object v0, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1057
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    goto :goto_1

    .line 1053
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->clearConversionSelection()V

    return-void

    .line 1059
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->refreshConversionParamsLabel()V

    return-void
.end method

.method private syncEngineeringToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 7

    .line 1219
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 1220
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 1221
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 1222
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1224
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1227
    iget-wide v3, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    iget-wide v3, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p1, v3, v1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 1228
    iput p1, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1229
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_2
    return-void
.end method

.method private updateCentralMeridianZoneLabel(I)V
    .locals 4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 480
    :goto_0
    iput v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->centralMeridianZoneWidth:I

    .line 481
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->tvCentralMeridian:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->central_meridian_zone:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateConversionSelectVisibility(I)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->llConversionSelect:Landroid/widget/FrameLayout;

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private uploadTransParamIfNeeded()V
    .locals 6

    .line 960
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-lez v1, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 962
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 963
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private validateCentralMeridian(D)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v6, p1, v4

    if-ltz v6, :cond_1

    cmpl-double v6, p1, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 777
    :cond_1
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->central_meridian_input_error:I

    .line 778
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object p2

    .line 779
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    aput-object v2, v3, v1

    .line 777
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    .line 779
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 777
    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v0
.end method

.method private validateCustomEllipsoidParams(DD)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, 0x41586a0000000000L    # 6400000.0

    const-wide v5, 0x4158392c00000000L    # 6350000.0

    cmpg-double v7, p1, v5

    if-ltz v7, :cond_3

    cmpl-double v7, p1, v3

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    cmpg-double v3, p3, p1

    if-lez v3, :cond_2

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p3, p1

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 769
    :cond_2
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->flatness_input_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v1

    .line 763
    :cond_3
    :goto_1
    sget p1, Lcom/qianhe/yct/R$string;->half_axis_input_error:I

    .line 764
    invoke-direct {p0, v5, v6}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object p2

    .line 765
    invoke-direct {p0, v3, v4}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p2, p4, v1

    aput-object p3, p4, v0

    .line 763
    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    .line 765
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 763
    invoke-virtual {p0, p1, p2, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v1
.end method

.method private validateOriginLatitude(D)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, p1, v4

    if-ltz v6, :cond_1

    cmpl-double v6, p1, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 787
    :cond_1
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->origin_latitude_input_error:I

    .line 788
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object p2

    .line 789
    invoke-direct {p0, v2, v3}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->formatParamDouble(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    aput-object v2, v3, v1

    .line 787
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->ok:I

    .line 789
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 787
    invoke-virtual {p0, p1, p2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return v0
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1245
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1246
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 1247
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->defaultEngineeringReadonly:Z

    if-eqz p1, :cond_0

    .line 1248
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ensureDefaultEngineeringCentralMeridian()V

    :cond_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 1263
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    const-string v2, "back"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .line 1272
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
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    .line 109
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 111
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "engineering"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 114
    const-class v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez p1, :cond_0

    .line 115
    new-instance p1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/EngineeringEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    const/4 v1, 0x2

    .line 117
    iput v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 119
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->create_engineering:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 128
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->modify_engineering:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->edtName:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->mEntity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->ivReset:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initConverParamsLauncher()V

    .line 134
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initSpinners()V

    .line 135
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initConversionParamsSpinner()V

    .line 136
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initDataFromEntity()V

    .line 137
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initView()V

    .line 138
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->applyDefaultEngineeringReadonlyUi()V

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->nsvContent:Landroidx/core/widget/NestedScrollView;

    invoke-static {p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyContentDirectionByLanguage(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringCreateBinding;->spConversionType:Landroid/widget/Spinner;

    new-instance v0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1280
    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->ellipsoidPickerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1281
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 1282
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

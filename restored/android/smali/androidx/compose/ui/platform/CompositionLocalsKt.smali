.class public abstract Landroidx/compose/ui/platform/CompositionLocalsKt;
.super Ljava/lang/Object;
.source "CompositionLocals.kt"


# static fields
.field private static final LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAccessibilityManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAccessibilityManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 57
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofill$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofill$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 68
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofillTree$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofillTree$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 75
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalClipboardManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalClipboardManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 89
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalGraphicsContext$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalGraphicsContext$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 101
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 108
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFocusManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFocusManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 120
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontLoader$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontLoader$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 127
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontFamilyResolver$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontFamilyResolver$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 134
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalHapticFeedback$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalHapticFeedback$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 142
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalInputModeManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalInputModeManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 149
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLayoutDirection$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLayoutDirection$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 157
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextInputService$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextInputService$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 165
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalSoftwareKeyboardController$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalSoftwareKeyboardController$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 170
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextToolbar$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextToolbar$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 177
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalUriHandler$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalUriHandler$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 184
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalViewConfiguration$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalViewConfiguration$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 191
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalWindowInfo$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalWindowInfo$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 195
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPointerIconService$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPointerIconService$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 200
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalProvidableScrollCaptureInProgress$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalProvidableScrollCaptureInProgress$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final ProvideCommonCompositionLocals(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/16 v8, 0x8

    const v9, 0x34224bad

    move-object/from16 v10, p3

    .line 215
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const/4 v11, 0x6

    and-int/lit8 v12, v3, 0x6

    if-nez v12, :cond_2

    and-int/lit8 v12, v3, 0x8

    if-nez v12, :cond_0

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_0

    :cond_0
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    :goto_0
    if-eqz v12, :cond_1

    const/4 v12, 0x4

    goto :goto_1

    :cond_1
    const/4 v12, 0x2

    :goto_1
    or-int/2addr v12, v3

    goto :goto_2

    :cond_2
    move v12, v3

    :goto_2
    and-int/lit8 v13, v3, 0x30

    if-nez v13, :cond_5

    and-int/lit8 v13, v3, 0x40

    if-nez v13, :cond_3

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_3

    :cond_3
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    :goto_3
    if-eqz v13, :cond_4

    const/16 v13, 0x20

    goto :goto_4

    :cond_4
    const/16 v13, 0x10

    :goto_4
    or-int/2addr v12, v13

    :cond_5
    and-int/lit16 v13, v3, 0x180

    if-nez v13, :cond_7

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x100

    goto :goto_5

    :cond_6
    const/16 v13, 0x80

    :goto_5
    or-int/2addr v12, v13

    :cond_7
    and-int/lit16 v13, v12, 0x93

    const/16 v14, 0x92

    if-ne v13, v14, :cond_9

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_6

    .line 239
    :cond_8
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 215
    :cond_9
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, -0x1

    const-string v14, "androidx.compose.ui.platform.ProvideCommonCompositionLocals (CompositionLocals.kt:214)"

    invoke-static {v9, v12, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 217
    :cond_a
    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    .line 218
    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getAutofill()Landroidx/compose/ui/autofill/Autofill;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v13

    .line 219
    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v14

    .line 220
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v16, 0x3

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 221
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v17, 0x10

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    .line 222
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v18, 0x2

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    .line 223
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v19, 0x4

    .line 224
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;

    move-result-object v7

    .line 223
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    .line 225
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v20, 0x8

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    .line 226
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 p3, 0x6

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    .line 227
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v21, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getInputModeManager()Landroidx/compose/ui/input/InputModeManager;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 228
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v22, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 229
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v23, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getTextInputService()Landroidx/compose/ui/text/input/TextInputService;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 230
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v24, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSoftwareKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 231
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v25, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 232
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    move-object/from16 v26, v4

    .line 233
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v27, v5

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 234
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v28, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 235
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v29, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 236
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-object/from16 v30, v4

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    const/16 v5, 0x13

    new-array v5, v5, [Landroidx/compose/runtime/ProvidedValue;

    const/16 v31, 0x0

    aput-object v9, v5, v31

    const/4 v9, 0x1

    aput-object v13, v5, v9

    aput-object v14, v5, v18

    aput-object v21, v5, v16

    aput-object v27, v5, v19

    const/4 v9, 0x5

    aput-object v6, v5, v9

    aput-object v7, v5, p3

    const/4 v6, 0x7

    aput-object v8, v5, v6

    aput-object v11, v5, v20

    const/16 v6, 0x9

    aput-object v22, v5, v6

    const/16 v6, 0xa

    aput-object v23, v5, v6

    const/16 v6, 0xb

    aput-object v24, v5, v6

    const/16 v6, 0xc

    aput-object v25, v5, v6

    const/16 v6, 0xd

    aput-object v26, v5, v6

    const/16 v6, 0xe

    aput-object v15, v5, v6

    const/16 v6, 0xf

    aput-object v28, v5, v6

    aput-object v29, v5, v17

    const/16 v6, 0x11

    aput-object v30, v5, v6

    const/16 v6, 0x12

    aput-object v4, v5, v6

    .line 237
    sget v4, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    shr-int/lit8 v6, v12, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v4, v6

    .line 216
    invoke-static {v5, v2, v10, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 239
    :cond_b
    :goto_7
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v5, Landroidx/compose/ui/platform/CompositionLocalsKt$ProvideCommonCompositionLocals$1;

    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/ui/platform/CompositionLocalsKt$ProvideCommonCompositionLocals$1;-><init>(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method public static final synthetic access$noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalProvidableScrollCaptureInProgress()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 200
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalScrollCaptureInProgress()Landroidx/compose/runtime/CompositionLocal;
    .locals 1

    .line 207
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method private static final noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositionLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

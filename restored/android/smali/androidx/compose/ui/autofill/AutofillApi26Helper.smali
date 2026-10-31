.class public final Landroidx/compose/ui/autofill/AutofillApi26Helper;
.super Ljava/lang/Object;
.source "AutofillUtils.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-direct {v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;-><init>()V

    sput-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAutofillId(Landroid/view/ViewStructure;)Landroid/view/autofill/AutofillId;
    .locals 0

    .line 39
    invoke-static {p1}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/ViewStructure;)Landroid/view/autofill/AutofillId;

    move-result-object p1

    return-object p1
.end method

.method public final isDate(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 56
    invoke-static {p1}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/autofill/AutofillValue;)Z

    move-result p1

    return p1
.end method

.method public final isList(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 60
    invoke-static {p1}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/autofill/AutofillValue;)Z

    move-result p1

    return p1
.end method

.method public final isText(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 52
    invoke-static {p1}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/autofill/AutofillValue;)Z

    move-result p1

    return p1
.end method

.method public final isToggle(Landroid/view/autofill/AutofillValue;)Z
    .locals 0

    .line 64
    invoke-static {p1}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/autofill/AutofillValue;)Z

    move-result p1

    return p1
.end method

.method public final setAutofillHints(Landroid/view/ViewStructure;[Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p1, p2}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline8;->m(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    return-void
.end method

.method public final setAutofillId(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V
    .locals 0

    .line 35
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method public final setAutofillType(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 43
    invoke-static {p1, p2}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public final textValue(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;
    .locals 0

    .line 68
    invoke-static {p1}, Landroidx/compose/ui/autofill/AutofillApi26Helper$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

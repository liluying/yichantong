.class final Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EngineeringCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EllipsoidPickerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;",
        ">;"
    }
.end annotation


# instance fields
.field private final allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Landroid/widget/Filter;

.field private final filteredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedAbsoluteIndex:I


# direct methods
.method static bridge synthetic -$$Nest$fgetallItems(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->allItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilteredItems(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1339
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1311
    new-instance p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;-><init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filter:Landroid/widget/Filter;

    .line 1340
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->allItems:Ljava/util/List;

    .line 1341
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    .line 1342
    iput p3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->selectedAbsoluteIndex:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;
    .locals 1

    if-ltz p1, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1307
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getItem(I)Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1358
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getItem(I)Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    iget p1, v0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->absoluteIndex:I

    int-to-long v0, p1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1375
    instance-of v0, p2, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1376
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    .line 1378
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_ellipsoid_option:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1380
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->getItem(I)Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1381
    iget-object p3, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->label:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    invoke-static {p2}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    if-eqz p1, :cond_2

    .line 1383
    iget p1, p1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->absoluteIndex:I

    iget p3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->selectedAbsoluteIndex:I

    if-ne p1, p3, :cond_2

    const/4 v1, 0x1

    .line 1384
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 1385
    sget p3, Lcom/qianhe/yct/R$color;->theme:I

    goto :goto_2

    :cond_3
    sget p3, Lcom/qianhe/yct/R$color;->text_black:I

    .line 1384
    :goto_2
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method indexOfAbsolute(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1363
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->filteredItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    iget v1, v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->absoluteIndex:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

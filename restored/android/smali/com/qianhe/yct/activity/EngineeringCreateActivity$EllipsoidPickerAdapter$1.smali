.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;
.super Landroid/widget/Filter;
.source "EngineeringCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 1314
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 1316
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1317
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    invoke-static {v2}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->-$$Nest$fgetallItems(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;

    .line 1318
    invoke-virtual {v3, p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1319
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1322
    :cond_2
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1330
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->-$$Nest$fgetfilteredItems(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 1331
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1332
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;->-$$Nest$fgetfilteredItems(Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1334
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

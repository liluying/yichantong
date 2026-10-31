.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowPointAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;


# direct methods
.method private constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 1132
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1132
    check-cast p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->onBindViewHolder(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;I)V
    .locals 10

    .line 1144
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 1148
    iget-object v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->tvNo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2, v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mformatNoString(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->points:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    .line 1152
    iget-object v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivCheck:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-eqz v2, :cond_0

    .line 1153
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_cad_checked:I

    goto :goto_0

    .line 1154
    :cond_0
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_cad_uncheck:I

    .line 1152
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1157
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$color;->cad_item_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1158
    iget-object v2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$color;->cad_item_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1159
    iget-boolean v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->select:Z

    if-eqz v3, :cond_1

    .line 1164
    iget-object v3, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivCheck:Landroid/widget/ImageView;

    const/4 v4, -0x1

    .line 1165
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1164
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const v3, -0x2458c6

    goto :goto_1

    .line 1168
    :cond_1
    iget-object v3, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivCheck:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x0

    .line 1170
    :goto_1
    iget-object v4, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1171
    iget-object v3, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->tvNo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1172
    iget-object v3, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->tvPointContent:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1173
    iget-object v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivVis:Landroid/widget/ImageView;

    .line 1174
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1173
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1177
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xCadPoint:Lcom/qh/xcad/XCadPoint;

    if-eqz v1, :cond_2

    .line 1179
    iget-object v2, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->tvPointContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    iget-wide v4, v1, Lcom/qh/xcad/XCadPoint;->x:D

    iget-wide v6, v1, Lcom/qh/xcad/XCadPoint;->y:D

    iget-wide v8, v1, Lcom/qh/xcad/XCadPoint;->z:D

    invoke-static/range {v3 .. v9}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mformatPointContent(Lcom/qianhe/yct/activity/CADEntityChooseActivity;DDD)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_2
    iget-object v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivVis:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_cad_vis:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_cad_invis:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1184
    iget-object v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivCheck:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$1;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    iget-object v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivVis:Landroid/widget/ImageView;

    new-instance v2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->layoutRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1132
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;
    .locals 2

    .line 1137
    iget-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_cad_choose_show_entity_points:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1138
    new-instance p2, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p2, v0, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;-><init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public setCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->select:Z

    .line 1277
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {v0}, Lcom/qh/xcad/XCadView;->clearSelectLightPoint()V

    .line 1280
    :cond_1
    iget-boolean v0, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->select:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->select:Z

    .line 1282
    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    .line 1285
    iget-boolean v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->select:Z

    if-eqz v1, :cond_2

    .line 1287
    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v1, p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputcurCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;)V

    .line 1288
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0, p2}, Lcom/qh/xcad/XCadView;->addSelectLightPoint(II)V

    goto :goto_0

    .line 1290
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    invoke-virtual {p1, v0, p2}, Lcom/qh/xcad/XCadView;->removeSelectLightPoint(II)V

    .line 1293
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

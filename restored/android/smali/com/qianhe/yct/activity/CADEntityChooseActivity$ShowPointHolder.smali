.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowPointHolder"
.end annotation


# instance fields
.field ivCheck:Landroid/widget/ImageView;

.field ivVis:Landroid/widget/ImageView;

.field layoutRoot:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

.field tvNo:Landroid/widget/TextView;

.field tvPointContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Landroid/view/View;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    .line 1092
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1093
    sget p1, Lcom/qianhe/yct/R$id;->layoutRoot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->layoutRoot:Landroid/widget/LinearLayout;

    .line 1094
    sget p1, Lcom/qianhe/yct/R$id;->ivCheck:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivCheck:Landroid/widget/ImageView;

    .line 1095
    sget p1, Lcom/qianhe/yct/R$id;->tvNo:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->tvNo:Landroid/widget/TextView;

    .line 1096
    sget p1, Lcom/qianhe/yct/R$id;->tvPointContent:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->tvPointContent:Landroid/widget/TextView;

    .line 1097
    sget p1, Lcom/qianhe/yct/R$id;->ivVis:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;->ivVis:Landroid/widget/ImageView;

    return-void
.end method

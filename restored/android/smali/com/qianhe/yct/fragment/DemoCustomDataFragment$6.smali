.class Lcom/qianhe/yct/fragment/DemoCustomDataFragment$6;
.super Landroid/widget/ArrayAdapter;
.source "DemoCustomDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupH5TypeSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$6;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 139
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 140
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$6;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41900000    # 18.0f

    .line 141
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p3, 0xf

    const/16 v0, 0xa

    .line 142
    invoke-virtual {p2, p3, v0, p3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 150
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 151
    iget-object p3, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$6;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41a00000    # 20.0f

    .line 152
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p1
.end method

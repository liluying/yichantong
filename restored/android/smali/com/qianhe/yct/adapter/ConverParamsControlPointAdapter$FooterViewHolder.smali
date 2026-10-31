.class Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConverParamsControlPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;


# direct methods
.method public static synthetic $r8$lambda$25lu8nT8dw5_u_pxFXP_OY1AcIk(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;Landroid/view/View;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    .line 131
    invoke-static {p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;->onAddPoint()V

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;Landroid/view/View;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    .line 129
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    sget p1, Lcom/qianhe/yct/R$id;->tvAddPoint:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$FooterViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bind()V
    .locals 0

    .line 0
    return-void
.end method

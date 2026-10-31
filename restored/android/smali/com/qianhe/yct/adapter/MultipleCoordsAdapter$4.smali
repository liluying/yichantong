.class Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;
.super Ljava/lang/Object;
.source "MultipleCoordsAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetupdatingRatioUi(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 212
    const-string p1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 213
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 216
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$4;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;->onRatioChanged(ILjava/lang/Double;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

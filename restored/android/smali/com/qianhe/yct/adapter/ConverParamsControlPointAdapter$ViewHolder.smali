.class Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConverParamsControlPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private final edtDstX:Lcom/qianhe/yct/view/NumericEditText;

.field private final edtDstY:Lcom/qianhe/yct/view/NumericEditText;

.field private final edtDstZ:Lcom/qianhe/yct/view/NumericEditText;

.field private final edtSrcX:Lcom/qianhe/yct/view/NumericEditText;

.field private final edtSrcY:Lcom/qianhe/yct/view/NumericEditText;

.field private final edtSrcZ:Lcom/qianhe/yct/view/NumericEditText;

.field private final ivDelete:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

.field private final tvCollectDst:Landroid/widget/TextView;

.field private final tvPickKnownPoint:Landroid/widget/TextView;

.field private final tvPointIndex:Landroid/widget/TextView;

.field private updatingText:Z


# direct methods
.method public static synthetic $r8$lambda$LIHe_bP2K6BWx3D5I9M1jkFupBo(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->onSrcTextChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$NdiUVKeMKsjG8KSPEwrSK4F6joA(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;->onDelete(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$SjvKdKr2Iv01xDIiXcVCeRmBifM(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;->onCollectDst(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$VJ09VSG3RRCRthFr1N4OoFszNMQ(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 185
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    .line 185
    invoke-static {p2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetinputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 186
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetinputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;->onInputFocused(Landroid/view/View;)V

    :cond_0
    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$XRj46eB5KP178w7rZGtgNL-YNxE(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    .line 190
    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetinputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetinputFocusListener(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$OnInputFocusListener;->onInputFocused(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$jTZnAhbVcJ8Oox8kyD56uY-gfhs(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->onDstTextChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$ziaYub2y52rHjM6SJwBqY6Yky4c(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;->onPickKnownPoint(I)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;Landroid/view/View;)V
    .locals 10

    .line 149
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    .line 150
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    sget p1, Lcom/qianhe/yct/R$id;->tvPointIndex:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->tvPointIndex:Landroid/widget/TextView;

    .line 152
    sget p1, Lcom/qianhe/yct/R$id;->ivDelete:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    .line 153
    sget v0, Lcom/qianhe/yct/R$id;->edtSrcX:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/view/NumericEditText;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcX:Lcom/qianhe/yct/view/NumericEditText;

    .line 154
    sget v1, Lcom/qianhe/yct/R$id;->edtSrcY:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/view/NumericEditText;

    iput-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcY:Lcom/qianhe/yct/view/NumericEditText;

    .line 155
    sget v2, Lcom/qianhe/yct/R$id;->edtSrcZ:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/view/NumericEditText;

    iput-object v2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcZ:Lcom/qianhe/yct/view/NumericEditText;

    .line 156
    sget v3, Lcom/qianhe/yct/R$id;->edtDstX:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/view/NumericEditText;

    iput-object v3, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstX:Lcom/qianhe/yct/view/NumericEditText;

    .line 157
    sget v4, Lcom/qianhe/yct/R$id;->edtDstY:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/view/NumericEditText;

    iput-object v4, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstY:Lcom/qianhe/yct/view/NumericEditText;

    .line 158
    sget v5, Lcom/qianhe/yct/R$id;->edtDstZ:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/qianhe/yct/view/NumericEditText;

    iput-object v5, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstZ:Lcom/qianhe/yct/view/NumericEditText;

    .line 159
    sget v6, Lcom/qianhe/yct/R$id;->tvCollectDst:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->tvCollectDst:Landroid/widget/TextView;

    .line 160
    sget v7, Lcom/qianhe/yct/R$id;->tvPickKnownPoint:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->tvPickKnownPoint:Landroid/widget/TextView;

    .line 162
    new-instance v7, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;

    new-instance v8, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    invoke-direct {v7, v8}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;-><init>(Ljava/lang/Runnable;)V

    .line 163
    new-instance v8, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;

    new-instance v9, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    invoke-direct {v8, v9}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    new-instance v7, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance p1, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    .line 189
    new-instance p2, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;)V

    .line 194
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 195
    invoke-virtual {v1, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 196
    invoke-virtual {v2, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 197
    invoke-virtual {v3, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 198
    invoke-virtual {v4, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 199
    invoke-virtual {v5, p1}, Lcom/qianhe/yct/view/NumericEditText;->setOnFocusListener(Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v5, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private formatValue(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 284
    const-string p1, "0"

    return-object p1

    .line 285
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 p2, 0x4

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 286
    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 287
    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private notifyDataChanged()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetcallback(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$Callback;->onDataChanged()V

    :cond_0
    return-void
.end method

.method private onDstTextChanged()V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->updatingText:Z

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->syncDstToPoint()V

    .line 244
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->notifyDataChanged()V

    return-void
.end method

.method private onSrcTextChanged()V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->updatingText:Z

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->syncSrcToPoint()V

    .line 238
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->notifyDataChanged()V

    return-void
.end method

.method private setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V
    .locals 0

    .line 271
    invoke-direct {p0, p2, p3}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->formatValue(D)Ljava/lang/String;

    move-result-object p2

    .line 272
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 273
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 276
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private syncDstToPoint()V
    .locals 3

    .line 257
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetpoints(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetpoints(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 260
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    .line 261
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    .line 262
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    :cond_1
    :goto_0
    return-void
.end method

.method private syncSrcToPoint()V
    .locals 3

    .line 248
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetpoints(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetpoints(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;

    .line 251
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    .line 252
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    .line 253
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method bind(Lcom/qianhe/yct/bean/ConverParamsControlPointInput;I)V
    .locals 5

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->updatingText:Z

    .line 210
    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->tvPointIndex:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$string;->control_point_index:I

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetpoints(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetminPointCount(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)I

    move-result v1

    const/16 v2, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->this$0:Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;

    invoke-static {p2}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;->-$$Nest$fgetsevenParamMode(Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    .line 214
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcX:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcX:D

    invoke-direct {p0, p2, v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V

    .line 218
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcY:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcY:D

    invoke-direct {p0, p2, v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V

    .line 219
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcZ:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->srcZ:D

    invoke-direct {p0, p2, v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V

    .line 220
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstX:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstX:D

    invoke-direct {p0, p2, v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V

    .line 221
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstY:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstY:D

    invoke-direct {p0, p2, v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V

    .line 222
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstZ:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p1, Lcom/qianhe/yct/bean/ConverParamsControlPointInput;->dstZ:D

    invoke-direct {p0, p2, v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->setTextIfChanged(Lcom/qianhe/yct/view/NumericEditText;D)V

    .line 223
    iput-boolean v4, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->updatingText:Z

    return-void
.end method

.method clearEditorFocus()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtSrcZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstX:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstY:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->edtDstZ:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method syncToPoint()V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->syncSrcToPoint()V

    .line 267
    invoke-direct {p0}, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$ViewHolder;->syncDstToPoint()V

    return-void
.end method

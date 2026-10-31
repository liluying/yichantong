.class Lcom/qianhe/yct/activity/CorsRenewActivity$5;
.super Ljava/lang/Object;
.source "CorsRenewActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CorsRenewActivity;->onEventMessage(Lcom/qianhe/yct/event/PriceListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/qianhe/yct/bean/RenewPriceBean;)V
    .locals 10

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fputmMchid(Lcom/qianhe/yct/activity/CorsRenewActivity;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fputmWxCode(Lcom/qianhe/yct/activity/CorsRenewActivity;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fputmOrderNo(Lcom/qianhe/yct/activity/CorsRenewActivity;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fputmPriceBean(Lcom/qianhe/yct/activity/CorsRenewActivity;Lcom/qianhe/yct/bean/RenewPriceBean;)V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->access$100(Lcom/qianhe/yct/activity/CorsRenewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 191
    iget-object v3, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/qianhe/yct/R$string;->pay_now:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltScanPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->lltAfterRenewal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->access$200(Lcom/qianhe/yct/activity/CorsRenewActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "corsAccountExpireEpoch"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_2

    cmp-long v0, v8, v3

    if-gez v0, :cond_3

    :cond_2
    move-wide v8, v3

    .line 206
    :cond_3
    iget v0, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->unit:I

    if-nez v0, :cond_4

    .line 207
    iget v0, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->count:I

    invoke-static {v8, v9, v0}, Lcom/qianhe/yct/utils/TimeShiftUtil;->afterDays(JI)J

    move-result-wide v5

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    .line 209
    iget v0, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->count:I

    invoke-static {v8, v9, v0}, Lcom/qianhe/yct/utils/TimeShiftUtil;->afterMonths(JI)J

    move-result-wide v5

    goto :goto_1

    .line 211
    :cond_5
    iget v0, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->count:I

    invoke-static {v8, v9, v0}, Lcom/qianhe/yct/utils/TimeShiftUtil;->afterYears(JI)J

    move-result-wide v5

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvExpireAfterRenewal:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v7, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v7, v3, v4, v5, v6}, Lcom/qianhe/yct/activity/CorsRenewActivity;->access$300(Lcom/qianhe/yct/activity/CorsRenewActivity;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget p1, p1, Lcom/qianhe/yct/bean/RenewPriceBean;->price:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int v0, p1

    int-to-float v3, v0

    .line 215
    const-string v4, "%s"

    cmpl-float v3, p1, v3

    if-nez v3, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 216
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCorsRenewBinding;->tvPayment:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    sget v4, Lcom/qianhe/yct/R$string;->pay_now:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$5;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    sget v5, Lcom/qianhe/yct/R$string;->currency_unit:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object p1, v5, v1

    const/4 p1, 0x2

    aput-object v4, v5, p1

    const-string p1, "%s\t%s%s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

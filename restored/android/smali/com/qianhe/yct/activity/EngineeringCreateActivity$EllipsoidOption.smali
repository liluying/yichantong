.class final Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EllipsoidOption"
.end annotation


# instance fields
.field final absoluteIndex:I

.field final country:Ljava/lang/String;

.field final iso:Ljava/lang/String;

.field final label:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    iput p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->absoluteIndex:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1293
    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->label:Ljava/lang/String;

    .line 1294
    iput-object p3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->country:Ljava/lang/String;

    .line 1295
    iput-object p4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->iso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;)Z
    .locals 3

    .line 1299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1300
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1301
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->label:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->country:Ljava/lang/String;

    .line 1302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->country:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->iso:Ljava/lang/String;

    .line 1303
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidOption;->iso:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

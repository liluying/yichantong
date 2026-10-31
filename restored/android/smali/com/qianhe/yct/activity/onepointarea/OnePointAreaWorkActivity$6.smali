.class Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$6;
.super Ljava/lang/Object;
.source "OnePointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;->-$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;IZ)V

    return-void
.end method

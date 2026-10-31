.class Lcom/qianhe/yct/activity/line/LineWorkActivity$7;
.super Ljava/lang/Object;
.source "LineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/line/LineWorkActivity;IZ)V

    return-void
.end method

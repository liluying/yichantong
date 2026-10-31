.class Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$6;
.super Ljava/lang/Object;
.source "ShuaPoWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity$6;->this$0:Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;->-$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;IZ)V

    return-void
.end method

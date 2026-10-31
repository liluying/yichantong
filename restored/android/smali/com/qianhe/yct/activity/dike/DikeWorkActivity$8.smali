.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$8;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;IZ)V

    return-void
.end method

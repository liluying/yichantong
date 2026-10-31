.class Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$8;
.super Ljava/lang/Object;
.source "WaGouWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$8;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$mrefreshToothType(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;IZ)V

    return-void
.end method

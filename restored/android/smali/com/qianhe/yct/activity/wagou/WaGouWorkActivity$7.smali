.class Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;
.super Ljava/lang/Object;
.source "WaGouWorkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 247
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 251
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->workView:Lcom/qianhe/yct/view/WorkView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityWgWorkBinding;->ivDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/WorkView;->resfreshDirection(I)V

    return-void
.end method

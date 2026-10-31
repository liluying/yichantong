.class Lcom/qianhe/yct/SplashActivity$4;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/SplashActivity;

.field final synthetic val$ivSel:Landroid/widget/ImageView;

.field final synthetic val$tvAgree:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/SplashActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/qianhe/yct/SplashActivity$4;->this$0:Lcom/qianhe/yct/SplashActivity;

    iput-object p2, p0, Lcom/qianhe/yct/SplashActivity$4;->val$ivSel:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/qianhe/yct/SplashActivity$4;->val$tvAgree:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$4;->val$ivSel:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 142
    iget-object p1, p0, Lcom/qianhe/yct/SplashActivity$4;->val$tvAgree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/SplashActivity$4;->val$ivSel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

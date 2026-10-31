.class Lcom/qianhe/yct/fragment/LineStep3Fragment$6;
.super Ljava/lang/Object;
.source "LineStep3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 171
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$msyncLengthFromUi(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$6;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$monLengthChanged(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    :cond_0
    return-void
.end method

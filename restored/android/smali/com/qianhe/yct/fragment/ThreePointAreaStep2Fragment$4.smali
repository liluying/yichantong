.class Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$4;
.super Ljava/lang/Object;
.source "ThreePointAreaStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep2Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    :cond_0
    return-void
.end method

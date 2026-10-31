.class Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$4;
.super Ljava/lang/Object;
.source "ThreePointAreaStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 129
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep1Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    :cond_0
    return-void
.end method

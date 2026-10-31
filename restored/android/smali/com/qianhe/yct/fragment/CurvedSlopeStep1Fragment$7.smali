.class Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$7;
.super Ljava/lang/Object;
.source "CurvedSlopeStep1Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep1Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->getCurrentType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthA:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment$7;->this$0:Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;->-$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep1Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthA:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_0
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthA:D

    return-void
.end method

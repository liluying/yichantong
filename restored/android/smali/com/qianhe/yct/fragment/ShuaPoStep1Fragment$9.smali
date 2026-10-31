.class Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;
.super Ljava/lang/Object;
.source "ShuaPoStep1Fragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->initObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 240
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;->onChanged([D)V

    return-void
.end method

.method public onChanged([D)V
    .locals 8

    if-eqz p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;)V

    .line 245
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment$9;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    invoke-static/range {v1 .. v7}, Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;->-$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ShuaPoStep1Fragment;DDD)V

    :cond_1
    :goto_0
    return-void
.end method

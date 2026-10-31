.class Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;
.super Ljava/lang/Object;
.source "OnePointAreaStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;Lcom/qianhe/baselib/bean/OnePointAreaEntity;)V

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)V

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 84
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$fgetonePointAreaEntity(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment$2;->this$0:Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/OnePointAreaStep2Fragment;)V

    return-void
.end method

.class public final synthetic Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/ProjectListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    check-cast p2, Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->$r8$lambda$dVS8785awLuhiq_H9kFejCN4gFg(Lcom/qianhe/yct/activity/ProjectListActivity;Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)I

    move-result p1

    return p1
.end method

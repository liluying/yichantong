.class public final synthetic Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

.field public final synthetic f$2:Lcom/qianhe/yct/event/ApkListResponse;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    iput-object p3, p0, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/event/ApkListResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;

    iget-object v2, p0, Lcom/qianhe/yct/utils/AppUpgrader$1$$ExternalSyntheticLambda0;->f$2:Lcom/qianhe/yct/event/ApkListResponse;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/AppUpgrader$1;->$r8$lambda$OANHtPjBj6ZPLoRQufomrajWyX4(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;Lcom/qianhe/yct/event/ApkListResponse;)V

    return-void
.end method

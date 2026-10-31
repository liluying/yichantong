.class Lcom/qianhe/yct/application/YCTApplication$1;
.super Ljava/lang/Object;
.source "YCTApplication.java"

# interfaces
.implements Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/application/YCTApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/application/YCTApplication;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/application/YCTApplication;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$1;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 1

    .line 103
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    return-object v0
.end method

.method public resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .locals 1

    .line 108
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p1

    return-object p1
.end method

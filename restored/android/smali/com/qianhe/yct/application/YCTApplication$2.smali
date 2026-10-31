.class Lcom/qianhe/yct/application/YCTApplication$2;
.super Ljava/lang/Object;
.source "YCTApplication.java"

# interfaces
.implements Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;


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

    .line 121
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$2;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication$2;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

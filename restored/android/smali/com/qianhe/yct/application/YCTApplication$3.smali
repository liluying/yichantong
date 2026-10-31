.class Lcom/qianhe/yct/application/YCTApplication$3;
.super Ljava/lang/Object;
.source "YCTApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


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

    .line 127
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$3;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 145
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    .line 146
    invoke-static {p1}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->apply(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$3;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-static {p1}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fgetactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fputactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;I)V

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$3;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-static {p1}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fgetappForeground(Lcom/qianhe/yct/application/YCTApplication;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$3;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-static {p1}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fgetactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fputactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;I)V

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$3;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-static {p1}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fgetactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;)I

    move-result p1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/application/YCTApplication$3;->this$0:Lcom/qianhe/yct/application/YCTApplication;

    invoke-static {p1}, Lcom/qianhe/yct/application/YCTApplication;->-$$Nest$fgetappForeground(Lcom/qianhe/yct/application/YCTApplication;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

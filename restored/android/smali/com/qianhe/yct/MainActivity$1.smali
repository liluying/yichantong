.class Lcom/qianhe/yct/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/MainActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/MainActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onLocationReceived(DDDFLjava/lang/String;)V
    .locals 0

    .line 264
    iget-object p7, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-static {p7}, Lcom/qianhe/yct/MainActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p7

    if-nez p7, :cond_0

    .line 265
    iget-object p7, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    new-instance p8, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p8}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    invoke-static {p7, p8}, Lcom/qianhe/yct/MainActivity;->-$$Nest$fputmINS(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 266
    iget-object p7, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-static {p7}, Lcom/qianhe/yct/MainActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p7

    iput-wide p3, p7, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 267
    iget-object p7, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-static {p7}, Lcom/qianhe/yct/MainActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p7

    iput-wide p1, p7, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 268
    iget-object p7, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-static {p7}, Lcom/qianhe/yct/MainActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object p7

    iput-wide p5, p7, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    .line 269
    iget-object p7, p0, Lcom/qianhe/yct/MainActivity$1;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-static {p7}, Lcom/qianhe/yct/MainActivity;->access$000(Lcom/qianhe/yct/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object p7

    invoke-interface {p7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p7

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "current_coords"

    invoke-interface {p7, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

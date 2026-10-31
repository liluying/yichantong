.class Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$5;
.super Ljava/lang/Object;
.source "DebugUpgradefmwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 367
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.class Lcom/qianhe/yct/activity/CADPreviewActivity$1;
.super Ljava/lang/Object;
.source "CADPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CADPreviewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADPreviewActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADPreviewActivity$1;->this$0:Lcom/qianhe/yct/activity/CADPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADPreviewActivity$1;->this$0:Lcom/qianhe/yct/activity/CADPreviewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADPreviewActivity;->-$$Nest$mpickDwgFile(Lcom/qianhe/yct/activity/CADPreviewActivity;)V

    return-void
.end method

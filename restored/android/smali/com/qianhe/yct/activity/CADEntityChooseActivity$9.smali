.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$9;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$9;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 576
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$9;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$msetAllCadShowPointVis(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V

    return-void
.end method

.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->onBindViewHolder(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

.field final synthetic val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1261
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iput p3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1265
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$3;->val$position:I

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->setCadUiPoint(Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;I)V

    return-void
.end method

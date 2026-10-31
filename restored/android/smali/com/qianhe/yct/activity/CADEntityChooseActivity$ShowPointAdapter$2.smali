.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;
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

    .line 1234
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iput p3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1238
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget-boolean v0, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->vis:Z

    if-nez v0, :cond_1

    .line 1241
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetinVisiblePointIndex(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/HashSet;

    move-result-object p1

    iget v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1242
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget-boolean p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-eqz p1, :cond_0

    .line 1244
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mrefreshCollectedVisuals(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    goto :goto_0

    .line 1246
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/qh/xcad/XCadView;->addSelectIndicePoint(II)V

    goto :goto_0

    .line 1249
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetinVisiblePointIndex(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Ljava/util/HashSet;

    move-result-object p1

    iget v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1250
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetselectCadEntity(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiEntity;->xCadEntityIndex:I

    iget-object v1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget v1, v1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->xPointIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/qh/xcad/XCadView;->removeSelectIndicePoint(II)V

    .line 1251
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->val$cadUiPoint:Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;

    iget-boolean p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CADUiPoint;->check:Z

    if-eqz p1, :cond_2

    .line 1252
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    iget-object p1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$mrefreshCollectedVisuals(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)V

    .line 1257
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter$2;->this$1:Lcom/qianhe/yct/activity/CADEntityChooseActivity$ShowPointAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

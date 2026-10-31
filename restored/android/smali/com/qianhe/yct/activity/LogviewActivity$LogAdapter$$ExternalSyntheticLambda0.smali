.class public final synthetic Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

.field public final synthetic f$1:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;->$r8$lambda$brD9S6YLrqBFbbtzWgo2bpb29pI(Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter;Lcom/qianhe/yct/activity/LogviewActivity$LogAdapter$MyViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/debug/DebugAdapter;

.field public final synthetic f$1:Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/debug/DebugAdapter;Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/activity/debug/DebugAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/activity/debug/DebugAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/activity/debug/DebugAdapter;->$r8$lambda$gH0iRckn1ITyhXUzldRBmbdVLOI(Lcom/qianhe/yct/activity/debug/DebugAdapter;Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

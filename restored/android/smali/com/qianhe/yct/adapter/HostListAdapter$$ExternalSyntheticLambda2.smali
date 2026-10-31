.class public final synthetic Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/HostListAdapter;

.field public final synthetic f$1:Landroid/widget/PopupWindow;

.field public final synthetic f$2:Lcom/qianhe/baselib/bean/CorsEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/HostListAdapter;Landroid/widget/PopupWindow;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/adapter/HostListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;->f$1:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/qianhe/baselib/bean/CorsEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/adapter/HostListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;->f$1:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/adapter/HostListAdapter;->$r8$lambda$aUv6_Vv7AnMM7lbvys3nTuUm3g4(Lcom/qianhe/yct/adapter/HostListAdapter;Landroid/widget/PopupWindow;Lcom/qianhe/baselib/bean/CorsEntity;Landroid/view/View;)V

    return-void
.end method

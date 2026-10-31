.class public final synthetic Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/HostListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/CorsEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/HostListAdapter;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/HostListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/CorsEntity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/qianhe/yct/adapter/HostListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/qianhe/baselib/bean/CorsEntity;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/adapter/HostListAdapter;->$r8$lambda$us9AW6MfaPgVcF8JUKAI-XR_xvE(Lcom/qianhe/yct/adapter/HostListAdapter;Lcom/qianhe/baselib/bean/CorsEntity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

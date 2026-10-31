.class public final synthetic Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

.field public final synthetic f$1:Lcom/qianhe/baselib/bean/ShareEntity;

.field public final synthetic f$2:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/ShareListAdapter;Lcom/qianhe/baselib/bean/ShareEntity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/ShareEntity;

    iput-object p3, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->$r8$lambda$t1rmYM8QmKJJNh7YwsufGBIK8gg(Lcom/qianhe/yct/adapter/ShareListAdapter;Lcom/qianhe/baselib/bean/ShareEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

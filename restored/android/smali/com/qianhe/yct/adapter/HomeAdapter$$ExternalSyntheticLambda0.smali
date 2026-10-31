.class public final synthetic Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/adapter/HomeAdapter;

.field public final synthetic f$1:Lcom/qianhe/yct/bean/HomeItem;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/adapter/HomeAdapter;Lcom/qianhe/yct/bean/HomeItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/HomeAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/yct/bean/HomeItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/adapter/HomeAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/qianhe/yct/bean/HomeItem;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/adapter/HomeAdapter;->$r8$lambda$mElJWnkSxnyTuuaUu60iNgXjuYI(Lcom/qianhe/yct/adapter/HomeAdapter;Lcom/qianhe/yct/bean/HomeItem;Landroid/view/View;)V

    return-void
.end method

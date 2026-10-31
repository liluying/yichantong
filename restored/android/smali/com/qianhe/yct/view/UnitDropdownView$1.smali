.class Lcom/qianhe/yct/view/UnitDropdownView$1;
.super Ljava/util/ArrayList;
.source "UnitDropdownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/UnitDropdownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/UnitDropdownView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/UnitDropdownView;)V
    .locals 3

    .line 37
    iput-object p1, p0, Lcom/qianhe/yct/view/UnitDropdownView$1;->this$0:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {}, Lcom/qianhe/baselib/enums/UnitEnum;->getSelectableTypes()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 39
    invoke-static {v2}, Lcom/qianhe/baselib/enums/UnitEnum;->getSymbol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

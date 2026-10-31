.class Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;
.super Ljava/lang/Object;
.source "ConverParamsControlPointAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTextWatcher"
.end annotation


# instance fields
.field private final onChange:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;->onChange:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 309
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ConverParamsControlPointAdapter$SimpleTextWatcher;->onChange:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

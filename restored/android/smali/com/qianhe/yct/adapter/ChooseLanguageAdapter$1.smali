.class Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;
.super Ljava/lang/Object;
.source "ChooseLanguageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

.field final synthetic val$language:Lcom/qianhe/baselib/bean/LanguageEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;Lcom/qianhe/baselib/bean/LanguageEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;->val$language:Lcom/qianhe/baselib/bean/LanguageEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;)Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;)Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$1;->val$language:Lcom/qianhe/baselib/bean/LanguageEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/LanguageEntity;->code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;->onAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

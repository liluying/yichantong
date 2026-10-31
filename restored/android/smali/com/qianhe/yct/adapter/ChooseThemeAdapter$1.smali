.class Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;
.super Ljava/lang/Object;
.source "ChooseThemeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseThemeAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

.field final synthetic val$themeEntity:Lcom/qianhe/baselib/bean/ThemeEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ChooseThemeAdapter;Lcom/qianhe/baselib/bean/ThemeEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;->val$themeEntity:Lcom/qianhe/baselib/bean/ThemeEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseThemeAdapter;)Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseThemeAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseThemeAdapter;)Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$1;->val$themeEntity:Lcom/qianhe/baselib/bean/ThemeEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ThemeEntity;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ChooseThemeAdapter$OnActionListener;->onAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

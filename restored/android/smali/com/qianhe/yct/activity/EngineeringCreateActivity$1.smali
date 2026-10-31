.class Lcom/qianhe/yct/activity/EngineeringCreateActivity$1;
.super Ljava/lang/Object;
.source "EngineeringCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringCreateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->-$$Nest$fgetmEntity(Lcom/qianhe/yct/activity/EngineeringCreateActivity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

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

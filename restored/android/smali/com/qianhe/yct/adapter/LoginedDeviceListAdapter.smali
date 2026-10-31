.class public Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoginedDeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/LoginedDevice;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;)Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/LoginedDevice;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->mData:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 34
    check-cast p1, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/yct/bean/LoginedDevice;

    .line 54
    iget-object v0, p1, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/yct/bean/LoginedDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p1, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/qianhe/yct/bean/LoginedDevice;->android_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v1, p1, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;->tvCurrent:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qianhe/yct/bean/LoginedDevice;->android_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p1, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    new-instance v0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;Lcom/qianhe/yct/bean/LoginedDevice;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_logined_device_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/LoginedDevice;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;

    return-void
.end method

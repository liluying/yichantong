.class public Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PathAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;,
        Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;,
        Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnCancelChoosedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckedFlags:[Z

.field private mContext:Landroid/content/Context;

.field private mFileFilter:Ljava/io/FileFilter;

.field private mFileSize:J

.field private mIconStyle:I

.field private mIsGreater:Z

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mMutilyMode:Z

.field public onItemClickListener:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/io/FileFilter;ZZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/io/FileFilter;",
            "ZZJ)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    const-string v0, "FilePickerLeon"

    iput-object v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mListData:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mFileFilter:Ljava/io/FileFilter;

    .line 51
    iput-boolean p4, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mMutilyMode:Z

    .line 52
    iput-boolean p5, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mIsGreater:Z

    .line 53
    iput-wide p6, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mFileSize:J

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mCheckedFlags:[Z

    return-void
.end method

.method static synthetic access$500(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;)[Z
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mCheckedFlags:[Z

    return-object p0
.end method

.method private updateFileIconStyle(Landroid/widget/ImageView;)V
    .locals 2

    .line 134
    iget v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mIconStyle:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 139
    :cond_0
    sget v0, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_file_style_green:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 136
    :cond_1
    sget v0, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_file_style_blue:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 142
    :cond_2
    sget v0, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_file_style_yellow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateFloaderIconStyle(Landroid/widget/ImageView;)V
    .locals 2

    .line 120
    iget v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mIconStyle:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    sget v0, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_folder_style_green:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 122
    :cond_1
    sget v0, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_folder_style_blue:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 128
    :cond_2
    sget v0, Lcom/leon/lfilepickerlibrary/R$mipmap;->lfile_folder_style_yellow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mListData:Ljava/util/List;

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

    .line 27
    check-cast p1, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->onBindViewHolder(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/16 v2, 0x8

    const-string v3, " "

    if-eqz v1, :cond_0

    .line 73
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$000(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->updateFileIconStyle(Landroid/widget/ImageView;)V

    .line 74
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$100(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$200(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/leon/lfilepickerlibrary/R$string;->lfile_FileSize:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/leon/lfilepickerlibrary/utils/FileUtils;->getReadableFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$000(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->updateFloaderIconStyle(Landroid/widget/ImageView;)V

    .line 79
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$100(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mFileFilter:Ljava/io/FileFilter;

    iget-boolean v5, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mIsGreater:Z

    iget-wide v6, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mFileSize:J

    invoke-static {v1, v4, v5, v6, v7}, Lcom/leon/lfilepickerlibrary/utils/FileUtils;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;ZJ)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 83
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$200(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/leon/lfilepickerlibrary/R$string;->lfile_LItem:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$200(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/leon/lfilepickerlibrary/R$string;->lfile_LItem:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_1
    iget-boolean v1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mMutilyMode:Z

    if-nez v1, :cond_2

    .line 90
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_2
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$400(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;-><init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;Ljava/io/File;Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;-><init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mCheckedFlags:[Z

    aget-boolean v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    new-instance v0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;-><init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/leon/lfilepickerlibrary/R$layout;->lfile_listitem:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;-><init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->onItemClickListener:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;

    return-void
.end method

.method public setmIconStyle(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mIconStyle:I

    return-void
.end method

.method public setmListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mListData:Ljava/util/List;

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mCheckedFlags:[Z

    return-void
.end method

.method public updateAllSelelcted(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->mCheckedFlags:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 178
    aput-boolean p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

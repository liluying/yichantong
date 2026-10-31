.class public Lcom/leon/lfilepickerlibrary/LFilePicker;
.super Ljava/lang/Object;
.source "LFilePicker.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddText:Ljava/lang/String;

.field private mBackStyle:I

.field private mBackgroundColor:Ljava/lang/String;

.field private mChooseMode:Z

.field private mFileSize:J

.field private mFileTypes:[Ljava/lang/String;

.field private mFragment:Landroid/app/Fragment;

.field private mIconStyle:I

.field private mIsGreater:Z

.field private mMaxNum:I

.field private mMutilyMode:Z

.field private mNotFoundFiles:Ljava/lang/String;

.field private mRequestCode:I

.field private mStartPath:Ljava/lang/String;

.field private mSupportFragment:Landroid/app/Fragment;

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:Ljava/lang/String;

.field private mTitleStyle:I

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Lcom/leon/lfilepickerlibrary/R$style;->LFileTheme:I

    iput v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->theme:I

    .line 26
    sget v0, Lcom/leon/lfilepickerlibrary/R$style;->LFileToolbarTextStyle:I

    iput v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitleStyle:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mBackStyle:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mMutilyMode:Z

    .line 31
    iput-boolean v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mChooseMode:Z

    .line 33
    iput v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mIconStyle:I

    .line 38
    iput-boolean v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mIsGreater:Z

    return-void
.end method

.method private getBundle()Landroid/os/Bundle;
    .locals 3

    .line 294
    new-instance v0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;

    invoke-direct {v0}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setTitle(Ljava/lang/String;)V

    .line 296
    iget v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->theme:I

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setTheme(I)V

    .line 297
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitleColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setTitleColor(Ljava/lang/String;)V

    .line 298
    iget v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitleStyle:I

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setTitleStyle(I)V

    .line 299
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setBackgroundColor(Ljava/lang/String;)V

    .line 300
    iget v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mBackStyle:I

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setBackIcon(I)V

    .line 301
    iget-boolean v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mMutilyMode:Z

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setMutilyMode(Z)V

    .line 302
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mAddText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setAddText(Ljava/lang/String;)V

    .line 303
    iget v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mIconStyle:I

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setIconStyle(I)V

    .line 304
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFileTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setFileTypes([Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mNotFoundFiles:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setNotFoundFiles(Ljava/lang/String;)V

    .line 306
    iget v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mMaxNum:I

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setMaxNum(I)V

    .line 307
    iget-boolean v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mChooseMode:Z

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setChooseMode(Z)V

    .line 308
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mStartPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setPath(Ljava/lang/String;)V

    .line 309
    iget-wide v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setFileSize(J)V

    .line 310
    iget-boolean v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mIsGreater:Z

    invoke-virtual {v0, v1}, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->setGreater(Z)V

    .line 311
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 312
    const-string v2, "param"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v1
.end method

.method private initIntent()Landroid/content/Intent;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0

    .line 287
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mSupportFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mSupportFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass Activity or Fragment by withActivity or withFragment or withSupportFragment method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->initIntent()Landroid/content/Intent;

    move-result-object v0

    .line 276
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/leon/lfilepickerlibrary/LFilePicker;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 260
    iget v2, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 262
    iget v2, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mSupportFragment:Landroid/app/Fragment;

    iget v2, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public withAddText(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mAddText:Ljava/lang/String;

    return-object p0
.end method

.method public withBackIcon(I)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 149
    iput p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mBackStyle:I

    return-object p0
.end method

.method public withBackgroundColor(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mBackgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method public withChooseMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mChooseMode:Z

    return-object p0
.end method

.method public withFileFilter([Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFileTypes:[Ljava/lang/String;

    return-object p0
.end method

.method public withFileSize(J)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 253
    iput-wide p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFileSize:J

    return-object p0
.end method

.method public withFragment(Landroid/app/Fragment;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mFragment:Landroid/app/Fragment;

    return-object p0
.end method

.method public withIconStyle(I)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 182
    iput p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mIconStyle:I

    return-object p0
.end method

.method public withIsGreater(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mIsGreater:Z

    return-object p0
.end method

.method public withMaxNum(I)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 209
    iput p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mMaxNum:I

    return-object p0
.end method

.method public withMutilyMode(Z)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mMutilyMode:Z

    return-object p0
.end method

.method public withNotFoundBooks(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mNotFoundFiles:Ljava/lang/String;

    return-object p0
.end method

.method public withRequestCode(I)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 138
    iput p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mRequestCode:I

    return-object p0
.end method

.method public withStartPath(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mStartPath:Ljava/lang/String;

    return-object p0
.end method

.method public withSupportFragment(Landroid/app/Fragment;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mSupportFragment:Landroid/app/Fragment;

    return-object p0
.end method

.method public withTheme(I)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 105
    iput p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->theme:I

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public withTitleColor(Ljava/lang/String;)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitleColor:Ljava/lang/String;

    return-object p0
.end method

.method public withTitleStyle(I)Lcom/leon/lfilepickerlibrary/LFilePicker;
    .locals 0

    .line 116
    iput p1, p0, Lcom/leon/lfilepickerlibrary/LFilePicker;->mTitleStyle:I

    return-object p0
.end method

.class public Lcom/leon/lfilepickerlibrary/model/ParamEntity;
.super Ljava/lang/Object;
.source "ParamEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addText:Ljava/lang/String;

.field private backIcon:I

.field private backgroundColor:Ljava/lang/String;

.field private chooseMode:Z

.field private fileSize:J

.field private fileTypes:[Ljava/lang/String;

.field private iconStyle:I

.field private isGreater:Z

.field private maxNum:I

.field private mutilyMode:Z

.field private notFoundFiles:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private theme:I

.field private title:Ljava/lang/String;

.field private titleColor:Ljava/lang/String;

.field private titleStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->chooseMode:Z

    return-void
.end method


# virtual methods
.method public getAddText()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->addText:Ljava/lang/String;

    return-object v0
.end method

.method public getBackIcon()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->backIcon:I

    return v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->fileSize:J

    return-wide v0
.end method

.method public getFileTypes()[Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->fileTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getIconStyle()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->iconStyle:I

    return v0
.end method

.method public getMaxNum()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->maxNum:I

    return v0
.end method

.method public getNotFoundFiles()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->notFoundFiles:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->theme:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->titleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleStyle()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->titleStyle:I

    return v0
.end method

.method public isChooseMode()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->chooseMode:Z

    return v0
.end method

.method public isGreater()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isGreater:Z

    return v0
.end method

.method public isMutilyMode()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->mutilyMode:Z

    return v0
.end method

.method public setAddText(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->addText:Ljava/lang/String;

    return-void
.end method

.method public setBackIcon(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->backIcon:I

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setChooseMode(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->chooseMode:Z

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->fileSize:J

    return-void
.end method

.method public setFileTypes([Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->fileTypes:[Ljava/lang/String;

    return-void
.end method

.method public setGreater(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->isGreater:Z

    return-void
.end method

.method public setIconStyle(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->iconStyle:I

    return-void
.end method

.method public setMaxNum(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->maxNum:I

    return-void
.end method

.method public setMutilyMode(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->mutilyMode:Z

    return-void
.end method

.method public setNotFoundFiles(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->notFoundFiles:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->theme:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->titleColor:Ljava/lang/String;

    return-void
.end method

.method public setTitleStyle(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/leon/lfilepickerlibrary/model/ParamEntity;->titleStyle:I

    return-void
.end method

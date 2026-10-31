.class public abstract Lcom/qianhe/baselib/base/BaseConfig;
.super Ljava/lang/Object;
.source "BaseConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public coordinateSystem:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public isInit:Z

.field public mount_point:Ljava/lang/String;

.field public ntripType:I

.field public ntrip_host:Ljava/lang/String;

.field public ntrip_port:I

.field public password:Ljava/lang/String;

.field public updateGGA_period:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    const/16 v1, 0x17ac

    .line 16
    iput v1, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 17
    iput-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->coordinateSystem:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 21
    iput v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    return-void
.end method


# virtual methods
.method public getCoordinateSystem()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->coordinateSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    return-object v0
.end method

.method public getMountPoint()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    return-object v0
.end method

.method public getNtripType()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    return v0
.end method

.method public getUpdatePeriod()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinateSystem(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->coordinateSystem:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    return-void
.end method

.method public setIsInit(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    return-void
.end method

.method public setMountPoint(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    return-void
.end method

.method public setNtripType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    return-void
.end method

.method public setUpdatePeriod(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseConfig{ntrip_host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ntrip_port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", coordinateSystem="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->coordinateSystem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mount_point=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", username=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateGGA_period="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->updateGGA_period:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qianhe/baselib/base/BaseConfig;->isInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ntripType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

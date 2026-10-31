.class public Lcom/qianhe/rtkclientlib/event/AntennaParams;
.super Ljava/lang/Object;
.source "AntennaParams.java"


# instance fields
.field public HL1:F

.field public HL2:F

.field public R:F

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public h:F


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;FFFF)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 23
    iput p2, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->R:F

    .line 24
    iput p3, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->h:F

    .line 25
    iput p4, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->HL1:F

    .line 26
    iput p5, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->HL2:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AntennaParams{R="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->R:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", HL1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->HL1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", HL2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->HL2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/event/AntennaParams;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

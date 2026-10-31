.class final Lcom/cmcc/sy/hap/nav/NativeJni;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native native_ClearAccount()V
.end method

.method protected static native native_GetAnsBuf()[B
.end method

.method protected static native native_GetEvn()I
.end method

.method protected static native native_GetExpireDate()Ljava/lang/String;
.end method

.method protected static native native_GetMountPoint()Ljava/lang/String;
.end method

.method protected static native native_GetRecvCnt()J
.end method

.method protected static native native_GetRtcmLength()I
.end method

.method protected static native native_GetRtcmStatus()I
.end method

.method protected static native native_GetServerIP()Ljava/lang/String;
.end method

.method protected static native native_GetServerPort()I
.end method

.method protected static native native_GetUID()Ljava/lang/String;
.end method

.method protected static native native_IsDefaultUser(Z)V
.end method

.method protected static native native_MF_Prd()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected static native native_MFs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected static native native_SendGGA(Ljava/lang/String;)I
.end method

.method protected static native native_SetAutoID(Ljava/lang/String;)I
.end method

.method protected static native native_SetDeviceID(Ljava/lang/String;)I
.end method

.method protected static native native_SetEtprUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static native native_SetMountPoint(Ljava/lang/String;)I
.end method

.method protected static native native_SetPrdName(Ljava/lang/String;)V
.end method

.method protected static native native_SetRtcmFreq(I)V
.end method

.method protected static native native_SetRtcmUserInfo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static native native_SetServerIP(Ljava/lang/String;)I
.end method

.method protected static native native_SetServerPort(I)I
.end method

.method protected static native native_SetSourceNode(I)I
.end method

.method protected static native native_SetStrEvn(Ljava/lang/String;)V
.end method

.method protected static native native_SetTimeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static native native_StartSdk(Z)I
.end method

.method protected static native native_gc()I
.end method

.method protected static native native_gc_m()I
.end method

.method protected static native native_getDbName()Ljava/lang/String;
.end method

.method protected static native native_getSdkVersion()Ljava/lang/String;
.end method

.method protected static native native_getTableName()Ljava/lang/String;
.end method

.method protected static native native_setBrd(Ljava/lang/String;)V
.end method

.method protected static native native_setEvn(I)V
.end method

.method protected static native native_setFacDeviceID(Ljava/lang/String;)V
.end method

.method protected static native native_setMF(Ljava/lang/String;)V
.end method

.method protected static native native_setMP(Ljava/lang/String;)V
.end method

.method protected static native native_stopSdk()V
.end method

.method protected static native native_xxxx()Ljava/lang/String;
.end method

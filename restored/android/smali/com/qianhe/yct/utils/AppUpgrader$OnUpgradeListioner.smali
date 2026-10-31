.class public interface abstract Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;
.super Ljava/lang/Object;
.source "AppUpgrader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/AppUpgrader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpgradeListioner"
.end annotation


# virtual methods
.method public abstract hasNewVersion(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V
.end method

.method public abstract onCancel(I)V
.end method

.method public abstract onCheckFailed(Ljava/lang/String;)V
.end method

.method public abstract onDownloadDone(ZLjava/lang/String;)V
.end method

.method public abstract onDownloadError(Z)V
.end method

.method public abstract onDownloadInfo()V
.end method

.method public abstract onDownloadProgress(ZI)V
.end method

.method public abstract onIgnore(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V
.end method

.method public abstract onLatestVersion()V
.end method

.method public abstract onParsingError()V
.end method

.method public abstract onParsingPackage()V
.end method

.method public abstract onStartDownload(Z)V
.end method

.method public abstract onUpgradeFailed(Ljava/lang/String;)V
.end method

.method public abstract onUpgradeTipsDialogShown()V
.end method

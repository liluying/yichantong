.class public interface abstract Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;
.super Ljava/lang/Object;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceScanListener"
.end annotation


# virtual methods
.method public abstract cancelBond(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBonding(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onDeviceScan(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
.end method

.method public abstract onScanFail()V
.end method

.method public abstract onScanFinished()V
.end method

.class public interface abstract Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;
.super Ljava/lang/Object;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnectionStateChangedListener"
.end annotation


# virtual methods
.method public abstract onBond(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBondCancelled(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBondCompleted(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onConnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onConnectionFailed(Ljava/lang/String;)V
.end method

.method public abstract onDisconnected(Lcom/qianhe/baselib/enums/DeviceType;)V
.end method

.method public abstract onSocketClosed(Ljava/lang/String;)V
.end method

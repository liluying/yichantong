.class public interface abstract Lcom/qh/diffclient/DiffClient$Listener;
.super Ljava/lang/Object;
.source "DiffClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/diffclient/DiffClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDiffDataReceived([B)V
.end method

.method public abstract onStateChanged(I)V
.end method

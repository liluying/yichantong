.class public interface abstract Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;
.super Ljava/lang/Object;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/provider/NetworkLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationCallback"
.end annotation


# virtual methods
.method public abstract onLocationFailed(Ljava/lang/String;)V
.end method

.method public abstract onLocationReceived(DDDFLjava/lang/String;)V
.end method

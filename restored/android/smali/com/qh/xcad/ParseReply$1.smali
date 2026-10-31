.class Lcom/qh/xcad/ParseReply$1;
.super Ljava/lang/Object;
.source "ParseReply.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/xcad/ParseReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qh/xcad/ParseReply;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qh/xcad/ParseReply;
    .locals 1

    .line 59
    new-instance v0, Lcom/qh/xcad/ParseReply;

    invoke-direct {v0, p1}, Lcom/qh/xcad/ParseReply;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/qh/xcad/ParseReply$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qh/xcad/ParseReply;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qh/xcad/ParseReply;
    .locals 0

    .line 60
    new-array p1, p1, [Lcom/qh/xcad/ParseReply;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/qh/xcad/ParseReply$1;->newArray(I)[Lcom/qh/xcad/ParseReply;

    move-result-object p1

    return-object p1
.end method

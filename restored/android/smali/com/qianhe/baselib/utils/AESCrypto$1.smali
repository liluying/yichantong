.class Lcom/qianhe/baselib/utils/AESCrypto$1;
.super Ljava/lang/ThreadLocal;
.source "AESCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/utils/AESCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Cipher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/qianhe/baselib/utils/AESCrypto$1;->initialValue()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljavax/crypto/Cipher;
    .locals 1

    .line 27
    invoke-static {}, Lcom/qianhe/baselib/utils/AESCrypto;->-$$Nest$smnewCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

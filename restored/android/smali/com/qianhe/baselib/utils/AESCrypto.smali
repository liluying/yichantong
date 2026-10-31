.class public Lcom/qianhe/baselib/utils/AESCrypto;
.super Ljava/lang/Object;
.source "AESCrypto.java"


# static fields
.field private static final DECRYPT_CIPHER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCRYPT_CIPHER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIXED_IV:[B

.field private static final HEX_CHARS:[C

.field private static final HEX_DECODE:[B

.field private static final IV_SPEC:Ljavax/crypto/spec/IvParameterSpec;

.field private static final KEY_SPEC:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static bridge synthetic -$$Nest$smnewCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 0
    invoke-static {}, Lcom/qianhe/baselib/utils/AESCrypto;->newCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    .line 14
    new-array v0, v0, [B

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->FIXED_IV:[B

    .line 15
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_CHARS:[C

    const/16 v0, 0x80

    .line 17
    new-array v0, v0, [B

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_DECODE:[B

    .line 24
    new-instance v0, Lcom/qianhe/baselib/utils/AESCrypto$1;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/AESCrypto$1;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->ENCRYPT_CIPHER:Ljava/lang/ThreadLocal;

    .line 30
    new-instance v0, Lcom/qianhe/baselib/utils/AESCrypto$2;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/AESCrypto$2;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->DECRYPT_CIPHER:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :goto_0
    sget-object v2, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_DECODE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    .line 39
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 42
    sget-object v2, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_DECODE:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 45
    sget-object v1, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_DECODE:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x61

    .line 46
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_2
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "xiaowenqiang"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/AESCrypto;->getKeyBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->KEY_SPEC:Ljavax/crypto/spec/SecretKeySpec;

    .line 50
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/qianhe/baselib/utils/AESCrypto;->FIXED_IV:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->IV_SPEC:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 116
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 117
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 118
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v4, v1, 0x1

    .line 120
    sget-object v5, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_CHARS:[C

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 121
    aget-char v2, v5, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 106
    invoke-static {p0}, Lcom/qianhe/baselib/utils/AESCrypto;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    .line 108
    const-string p0, ""

    return-object p0

    .line 110
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->DECRYPT_CIPHER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 111
    sget-object v1, Lcom/qianhe/baselib/utils/AESCrypto;->KEY_SPEC:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/qianhe/baselib/utils/AESCrypto;->IV_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/utils/AESCrypto;->ENCRYPT_CIPHER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 79
    sget-object v1, Lcom/qianhe/baselib/utils/AESCrypto;->KEY_SPEC:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/qianhe/baselib/utils/AESCrypto;->IV_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 80
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/qianhe/baselib/utils/AESCrypto;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKeyBytes(Ljava/lang/String;)[B
    .locals 3

    .line 66
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 67
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/16 v0, 0x10

    .line 68
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 69
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    shr-int/lit8 v1, v0, 0x1

    .line 134
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 136
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 137
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 138
    const-string/jumbo v5, "\u975e\u6cd5HEX\u5b57\u7b26"

    const/16 v6, 0x80

    if-ge v3, v6, :cond_2

    if-ge v4, v6, :cond_2

    .line 141
    sget-object v6, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_DECODE:[B

    aget-byte v3, v6, v3

    .line 142
    aget-byte v4, v6, v4

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    shr-int/lit8 v5, v2, 0x1

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 146
    aput-byte v3, v1, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 144
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v1

    .line 132
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HEX\u5b57\u7b26\u4e32\u957f\u5ea6\u5fc5\u987b\u4e3a\u5076\u6570"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEncrypted(Ljava/lang/String;)Z
    .locals 5

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_5

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_3

    .line 97
    sget-object v4, Lcom/qianhe/baselib/utils/AESCrypto;->HEX_DECODE:[B

    aget-byte v3, v4, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method private static newCipher()Ljavax/crypto/Cipher;
    .locals 3

    .line 58
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AES Cipher init failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class public Lcom/qianhe/baselib/utils/NfcTagReader;
.super Ljava/lang/Object;
.source "NfcTagReader.java"


# instance fields
.field private intentFiltersArray:[Landroid/content/IntentFilter;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private techListsArray:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->intentFiltersArray:[Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->techListsArray:[[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBluetoothMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    const-string v1, "bt_mac=([0-9A-Fa-f:]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p0, v1}, Lcom/qianhe/baselib/utils/NfcTagReader;->isValidMacAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 233
    :cond_1
    const-string v1, "\\s*BT:\\s*([0-9A-Fa-f:]+)\\s*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 234
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/utils/NfcTagReader;->isValidMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTagFromIntent(Landroid/content/Intent;)Landroid/nfc/Tag;
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_1
    :goto_0
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/nfc/Tag;

    return-object p1
.end method

.method public handleTagReadError(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 100
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "out of date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    const-string/jumbo p1, "\u6807\u7b7e\u5df2\u8fc7\u671f\uff0c\u8bf7\u5c06\u6807\u7b7e\u8fdc\u79bb\u624b\u673a\u540e\u91cd\u65b0\u9760\u8fd1\u518d\u8bd5"

    return-object p1

    .line 104
    :cond_0
    const-string/jumbo p1, "\u6ca1\u6709\u6743\u9650\u8bbf\u95ee\u6807\u7b7e\uff0c\u8bf7\u68c0\u67e5NFC\u8bbe\u7f6e"

    return-object p1

    .line 106
    :cond_1
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    .line 107
    const-string/jumbo p1, "\u6807\u7b7e\u72b6\u6001\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    return-object p1

    .line 108
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 109
    const-string/jumbo p1, "\u8bfb\u53d6\u5931\u8d25\uff0c\u6807\u7b7e\u53ef\u80fd\u79bb\u5f00\u8bfb\u53d6\u8303\u56f4"

    return-object p1

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bfb\u53d6\u6807\u7b7e\u65f6\u53d1\u751f\u672a\u77e5\u9519\u8bef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasNfcPermission(Landroid/app/Activity;)Z
    .locals 3

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 145
    const-string v0, "android.permission.NFC"

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/NfcTagReader$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v2
.end method

.method public initNfcReader(Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 37
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 39
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 40
    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->pendingIntent:Landroid/app/PendingIntent;

    .line 42
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    :try_start_0
    const-string v2, "*/*"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDataType \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 48
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 50
    new-array v5, v5, [Landroid/content/IntentFilter;

    aput-object p1, v5, v3

    aput-object v2, v5, v1

    aput-object v4, v5, v0

    iput-object v5, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->intentFiltersArray:[Landroid/content/IntentFilter;

    .line 52
    const-class p1, Landroid/nfc/tech/NfcA;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-class v2, Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [[Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->techListsArray:[[Ljava/lang/String;

    return-void
.end method

.method public isNfcAvailable(Landroid/app/Activity;)Z
    .locals 0

    .line 122
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNfcEnabled(Landroid/app/Activity;)Z
    .locals 0

    .line 133
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/utils/NfcTagReader;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValidMacAddress(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 248
    :cond_0
    const-string v0, "^([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public readNdefData(Landroid/nfc/Tag;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 156
    :cond_0
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 159
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->connect()V

    .line 160
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 163
    array-length v1, v0

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 164
    aget-object v0, v0, v1

    .line 165
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    aget-byte v0, v2, v1

    and-int/lit8 v0, v0, 0x7

    .line 169
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    array-length v5, v2

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    .line 173
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :try_start_3
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1

    :cond_3
    const/4 v0, 0x2

    .line 177
    :try_start_4
    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    :try_start_5
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    return-object v0

    .line 180
    :cond_4
    :try_start_6
    const-string/jumbo v0, "\u6807\u7b7e\u4e0d\u5305\u542bNDEF\u6570\u636e"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    :try_start_7
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    return-object v0

    .line 182
    :goto_0
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC \u8bfb\u53d6NDEF\u6570\u636e\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/utils/NfcTagReader;->handleTagReadError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 186
    :try_start_9
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    return-object v0

    :goto_1
    :try_start_a
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 190
    :catch_6
    throw v0
.end method

.method public readRawData(Landroid/nfc/Tag;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 198
    :cond_0
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 202
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->connect()V

    .line 204
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 205
    invoke-virtual {p1, v1}, Landroid/nfc/tech/NfcA;->transceive([B)[B

    move-result-object v1

    .line 206
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 208
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC\u8bfb\u53d6\u539f\u59cb\u6570\u636e\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/utils/NfcTagReader;->handleTagReadError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :try_start_3
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v0

    :goto_0
    :try_start_4
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 216
    :catch_3
    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x4t
    .end array-data
.end method

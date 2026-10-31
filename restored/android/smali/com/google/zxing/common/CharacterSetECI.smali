.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 53

    .line 35
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v1, 0x0

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "Cp437"

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    .line 36
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v4, 0x1

    const/4 v5, 0x3

    filled-new-array {v4, v5}, [I

    move-result-object v6

    const-string v7, "ISO-8859-1"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISO8859_1"

    invoke-direct {v3, v8, v4, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    .line 37
    new-instance v6, Lcom/google/zxing/common/CharacterSetECI;

    const-string v7, "ISO-8859-2"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISO8859_2"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v2, v9, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    new-instance v7, Lcom/google/zxing/common/CharacterSetECI;

    const-string v8, "ISO-8859-3"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "ISO8859_3"

    const/4 v11, 0x5

    invoke-direct {v7, v10, v5, v11, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    .line 39
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    const-string v10, "ISO-8859-4"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "ISO8859_4"

    const/4 v13, 0x6

    invoke-direct {v8, v12, v9, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 40
    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string v12, "ISO-8859-5"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "ISO8859_5"

    const/4 v15, 0x7

    invoke-direct {v10, v14, v11, v15, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    .line 41
    new-instance v12, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-6"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const-string v1, "ISO8859_6"

    const/16 v17, 0x2

    const/16 v2, 0x8

    invoke-direct {v12, v1, v13, v2, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 42
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-7"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x1

    const-string v4, "ISO8859_7"

    const/16 v19, 0x3

    const/16 v5, 0x9

    invoke-direct {v1, v4, v15, v5, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    .line 43
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-8"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x4

    const-string v9, "ISO8859_8"

    const/16 v21, 0x5

    const/16 v11, 0xa

    invoke-direct {v4, v9, v2, v11, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v4, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 44
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-9"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v22, 0x8

    const-string v2, "ISO8859_9"

    const/16 v23, 0x6

    const/16 v13, 0xb

    invoke-direct {v9, v2, v5, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    .line 45
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-10"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v24, 0x9

    const-string v5, "ISO8859_10"

    const/16 v25, 0x7

    const/16 v15, 0xc

    invoke-direct {v2, v5, v11, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 46
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-11"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v26, 0xa

    const-string v11, "ISO8859_11"

    const/16 v15, 0xd

    invoke-direct {v5, v11, v13, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    .line 47
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-13"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v28, 0xb

    const-string v13, "ISO8859_13"

    const/16 v15, 0xf

    move-object/from16 v30, v0

    const/16 v0, 0xc

    invoke-direct {v11, v13, v0, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 48
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v13, "ISO-8859-14"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "ISO8859_14"

    const/16 v15, 0x10

    move-object/from16 v32, v1

    const/16 v1, 0xd

    invoke-direct {v0, v14, v1, v15, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    .line 49
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    const-string v13, "ISO-8859-15"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "ISO8859_15"

    const/16 v15, 0xe

    move-object/from16 v34, v0

    const/16 v0, 0x11

    invoke-direct {v1, v14, v15, v0, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 50
    new-instance v13, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "ISO-8859-16"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v35, 0xe

    const-string v15, "ISO8859_16"

    const/16 v0, 0x12

    move-object/from16 v37, v1

    const/16 v1, 0xf

    invoke-direct {v13, v15, v1, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v13, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    .line 51
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "Shift_JIS"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "SJIS"

    const/16 v0, 0x14

    move-object/from16 v39, v2

    const/16 v2, 0x10

    invoke-direct {v1, v15, v2, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    .line 52
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v14, "windows-1250"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cp1250"

    const/16 v0, 0x15

    move-object/from16 v41, v1

    const/16 v1, 0x11

    invoke-direct {v2, v15, v1, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 53
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v14, "windows-1251"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cp1251"

    const/16 v0, 0x16

    move-object/from16 v43, v2

    const/16 v2, 0x12

    invoke-direct {v1, v15, v2, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    .line 54
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v14, "windows-1252"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cp1252"

    const/16 v0, 0x13

    move-object/from16 v45, v1

    const/16 v1, 0x17

    invoke-direct {v2, v15, v0, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 55
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v14, "windows-1256"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cp1256"

    const/16 v1, 0x18

    move-object/from16 v47, v2

    const/16 v2, 0x14

    invoke-direct {v0, v15, v2, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    .line 56
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "UTF-16BE"

    const-string v15, "UnicodeBig"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "UnicodeBigUnmarked"

    const/16 v1, 0x19

    move-object/from16 v48, v0

    const/16 v0, 0x15

    invoke-direct {v2, v15, v0, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 57
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "UTF-8"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF8"

    const/16 v1, 0x1a

    move-object/from16 v49, v2

    const/16 v2, 0x16

    invoke-direct {v0, v15, v2, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    .line 58
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    const/16 v14, 0x1b

    const/16 v15, 0xaa

    filled-new-array {v14, v15}, [I

    move-result-object v14

    const-string v15, "US-ASCII"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "ASCII"

    move-object/from16 v50, v0

    const/16 v0, 0x17

    invoke-direct {v2, v1, v0, v14, v15}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 59
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/16 v1, 0x1c

    const-string v14, "Big5"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    .line 60
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    const-string v14, "EUC_CN"

    const-string v15, "GBK"

    move-object/from16 v46, v0

    const-string v0, "GB2312"

    filled-new-array {v0, v14, v15}, [Ljava/lang/String;

    move-result-object v0

    const-string v14, "GB18030"

    const/16 v15, 0x1d

    move-object/from16 v51, v2

    const/16 v2, 0x19

    invoke-direct {v1, v14, v2, v15, v0}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    .line 61
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "EUC-KR"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v14, "EUC_KR"

    const/16 v15, 0x1e

    move-object/from16 v52, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v14, v1, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v1, 0x1b

    .line 32
    new-array v1, v1, [Lcom/google/zxing/common/CharacterSetECI;

    aput-object v30, v1, v16

    aput-object v3, v1, v18

    aput-object v6, v1, v17

    aput-object v7, v1, v19

    aput-object v8, v1, v20

    aput-object v10, v1, v21

    aput-object v12, v1, v23

    aput-object v32, v1, v25

    aput-object v4, v1, v22

    aput-object v9, v1, v24

    aput-object v39, v1, v26

    aput-object v5, v1, v28

    const/16 v27, 0xc

    aput-object v11, v1, v27

    const/16 v29, 0xd

    aput-object v34, v1, v29

    aput-object v37, v1, v35

    const/16 v31, 0xf

    aput-object v13, v1, v31

    const/16 v33, 0x10

    aput-object v41, v1, v33

    const/16 v36, 0x11

    aput-object v43, v1, v36

    const/16 v38, 0x12

    aput-object v45, v1, v38

    const/16 v2, 0x13

    aput-object v47, v1, v2

    const/16 v2, 0x14

    aput-object v48, v1, v2

    const/16 v2, 0x15

    aput-object v49, v1, v2

    const/16 v2, 0x16

    aput-object v50, v1, v2

    const/16 v2, 0x17

    aput-object v51, v1, v2

    const/16 v40, 0x18

    aput-object v46, v1, v40

    const/16 v42, 0x19

    aput-object v52, v1, v42

    const/16 v44, 0x1a

    aput-object v0, v1, v44

    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 67
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 68
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    iget-object v4, v3, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 70
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 72
    :cond_0
    sget-object v4, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v4, v3, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 74
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 84
    filled-new-array {p3}, [I

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 89
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 94
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 111
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 133
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 124
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0

    .line 122
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 32
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

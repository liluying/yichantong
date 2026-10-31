.class public final enum Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsPrivacyAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigurablePrivacy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum ANDROID_ID:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum ANDROID_VERSION:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum APP_LIST:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum DEVICE_MODEL:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum IMSI:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum MAC:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum MODEL:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum OAID:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum QB_INSTALLED:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum QIMEI36:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field public static final enum SERIAL:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

.field private static final synthetic b:[Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 0
    new-instance v0, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v1, 0x0

    const-string v2, "imsi"

    const-string v3, "IMSI"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->IMSI:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v2, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v3, 0x1

    const-string v4, "android_id"

    const-string v5, "ANDROID_ID"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->ANDROID_ID:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v4, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v5, 0x2

    const-string v6, "mac"

    const-string v7, "MAC"

    invoke-direct {v4, v7, v5, v6}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->MAC:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v6, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v7, 0x3

    const-string v8, "android_version"

    const-string v9, "ANDROID_VERSION"

    invoke-direct {v6, v9, v7, v8}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->ANDROID_VERSION:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v8, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v9, 0x4

    const-string v10, "device_model"

    const-string v11, "DEVICE_MODEL"

    invoke-direct {v8, v11, v9, v10}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->DEVICE_MODEL:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v10, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v11, 0x5

    const-string v12, "app_list"

    const-string v13, "APP_LIST"

    invoke-direct {v10, v13, v11, v12}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->APP_LIST:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v12, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v13, 0x6

    const-string v14, "q36"

    const-string v15, "QIMEI36"

    invoke-direct {v12, v15, v13, v14}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->QIMEI36:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v14, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/4 v15, 0x7

    const/16 v16, 0x0

    const-string v1, "model"

    const/16 v17, 0x1

    const-string v3, "MODEL"

    invoke-direct {v14, v3, v15, v1}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->MODEL:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v1, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/16 v3, 0x8

    const/16 v18, 0x2

    const-string v5, "oaid"

    const/16 v19, 0x3

    const-string v7, "OAID"

    invoke-direct {v1, v7, v3, v5}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->OAID:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v5, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/16 v7, 0x9

    const/16 v20, 0x8

    const-string v3, "serial"

    const/16 v21, 0x4

    const-string v9, "SERIAL"

    invoke-direct {v5, v9, v7, v3}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->SERIAL:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v3, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/16 v9, 0xa

    const/16 v22, 0x9

    const-string v7, "action"

    const/16 v23, 0x5

    const-string v11, "ACTION"

    invoke-direct {v3, v11, v9, v7}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->ACTION:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    new-instance v7, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/16 v11, 0xb

    const/16 v24, 0xa

    const-string v9, "qb_installed"

    const/16 v25, 0x6

    const-string v13, "QB_INSTALLED"

    invoke-direct {v7, v13, v11, v9}, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->QB_INSTALLED:Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    const/16 v9, 0xc

    new-array v9, v9, [Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    aput-object v0, v9, v16

    aput-object v2, v9, v17

    aput-object v4, v9, v18

    aput-object v6, v9, v19

    aput-object v8, v9, v21

    aput-object v10, v9, v23

    aput-object v12, v9, v25

    aput-object v14, v9, v15

    aput-object v1, v9, v20

    aput-object v5, v9, v22

    aput-object v3, v9, v24

    aput-object v7, v9, v11

    sput-object v9, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->b:[Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;
    .locals 1

    .line 0
    const-class v0, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    return-object p0
.end method

.method public static values()[Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->b:[Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    invoke-virtual {v0}, [Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/smtt/sdk/TbsPrivacyAccess$ConfigurablePrivacy;

    return-object v0
.end method

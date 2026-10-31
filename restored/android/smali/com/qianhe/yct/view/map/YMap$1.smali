.class synthetic Lcom/qianhe/yct/view/map/YMap$1;
.super Ljava/lang/Object;
.source "YMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/map/YMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$qianhe$yct$view$map$YMapType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    invoke-static {}, Lcom/qianhe/yct/view/map/YMapType;->values()[Lcom/qianhe/yct/view/map/YMapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/qianhe/yct/view/map/YMap$1;->$SwitchMap$com$qianhe$yct$view$map$YMapType:[I

    :try_start_0
    sget-object v1, Lcom/qianhe/yct/view/map/YMapType;->TianDiTu:Lcom/qianhe/yct/view/map/YMapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/qianhe/yct/view/map/YMap$1;->$SwitchMap$com$qianhe$yct$view$map$YMapType:[I

    sget-object v1, Lcom/qianhe/yct/view/map/YMapType;->GOOGLEMAP:Lcom/qianhe/yct/view/map/YMapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.class Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil$ColumnInfo;
.super Ljava/lang/Object;
.source "SQLiteBatchColumnRenameUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnInfo"
.end annotation


# instance fields
.field cid:I

.field defaultValue:Ljava/lang/String;

.field name:Ljava/lang/String;

.field notNull:Z

.field primaryKey:Z

.field type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil$ColumnInfo;-><init>()V

    return-void
.end method

.class public abstract Lcom/qianhe/yct/utils/BluetoothBondHelper;
.super Ljava/lang/Object;
.source "BluetoothBondHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$sfgetMAIN()Landroid/os/Handler;
    .locals 1

    .line 0
    sget-object v0, Lcom/qianhe/yct/utils/BluetoothBondHelper;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smscheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->scheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smvalidateBond(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->validateBond(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qianhe/yct/utils/BluetoothBondHelper;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method static hasBluetoothBondPermission(Landroid/content/Context;)Z
    .locals 3

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 193
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public static performBond(Landroid/app/Activity;Ljava/lang/String;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->validateBond(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BluetoothBondHelper: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 52
    invoke-interface {p2, p0}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    :cond_0
    return p0

    .line 56
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xc

    const/4 v7, 0x1

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 60
    invoke-interface {p2, v7}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    :cond_2
    return v7

    .line 64
    :cond_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xb

    const-wide/16 v3, 0x1f40

    if-ne p1, v0, :cond_5

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothBondHelper: \u5df2\u5728\u914d\u5bf9\u4e2d\uff0c\u7b49\u5f85\u5b8c\u6210\uff0c\u4e0d\u91cd\u590d createBond "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    if-eqz p2, :cond_4

    .line 68
    invoke-interface {p2, v7}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    :cond_4
    return v7

    .line 72
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothBondHelper: \u8c03\u5ea6 createBond -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBondCancelEpoch()J

    move-result-wide v5

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 75
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->scheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    return v7
.end method

.method private static scheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;

    move-object v1, p0

    move-object v5, p1

    move-object v4, p2

    move v6, p3

    move-wide v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;-><init>(Landroid/app/Activity;JLcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;Landroid/bluetooth/BluetoothDevice;I)V

    if-nez v6, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 165
    :cond_0
    sget-object p0, Lcom/qianhe/yct/utils/BluetoothBondHelper;->MAIN:Landroid/os/Handler;

    if-nez v6, :cond_1

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x190

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static validateBond(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 171
    const-string p0, "activity=null"

    return-object p0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string p0, "activity finishing"

    return-object p0

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    const-string p0, "activity destroyed"

    return-object p0

    .line 179
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    const-string p0, "address empty"

    return-object p0

    .line 182
    :cond_3
    invoke-static {p0}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->hasBluetoothBondPermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 183
    const-string/jumbo p0, "\u65e0\u84dd\u7259\u914d\u5bf9\u6743\u9650"

    return-object p0

    .line 185
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_5

    .line 186
    const-string p0, "adapter=null"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

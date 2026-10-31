.class Lcom/qianhe/yct/utils/BluetoothBondHelper$1;
.super Ljava/lang/Object;
.source "BluetoothBondHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/BluetoothBondHelper;->scheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$attempt:I

.field final synthetic val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

.field final synthetic val$cancelEpoch:J

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public static synthetic $r8$lambda$9ma4nzK6Jtb30wIV8aumHP7UQ60(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
    .locals 0

    add-int/lit8 p3, p3, 0x1

    .line 144
    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$smscheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LthEpAlneeHqn1MOtcq3zgVqRlg(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
    .locals 0

    add-int/lit8 p3, p3, 0x1

    .line 98
    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$smscheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aw0VBOLoD35lEI2FAZ-kDn9WKL0(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V
    .locals 0

    add-int/lit8 p3, p3, 0x1

    .line 153
    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$smscheduleCreateBond(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;JLcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$cancelEpoch:J

    iput-object p4, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    iput-object p5, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p6, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 87
    iget-wide v1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$cancelEpoch:J

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->wasBondCancelledSince(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 88
    const-string v0, "BluetoothBondHelper: \u7528\u6237\u5df2\u53d6\u6d88\uff0c\u8df3\u8fc7 createBond"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 90
    invoke-interface {v0, v2}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$smvalidateBond(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x190

    const/16 v5, 0xb

    if-eqz v1, :cond_2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BluetoothBondHelper: createBond \u8df3\u8fc7, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->w(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    if-ge v0, v5, :cond_1

    .line 98
    invoke-static {}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    iget v9, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    iget-wide v10, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$cancelEpoch:J

    new-instance v5, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda0;

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 102
    invoke-interface {v0, v2}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    return-void

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v6, 0xc

    const/4 v7, 0x1

    const-wide/16 v8, 0x1f40

    if-ne v1, v6, :cond_3

    .line 107
    invoke-virtual {v0, v8, v9}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 109
    invoke-interface {v0, v7}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    return-void

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 114
    const-string v1, "BluetoothBondHelper: \u5df2\u5728\u914d\u5bf9\u4e2d\uff0c\u7b49\u5f85\u5b8c\u6210"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v8, v9}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 117
    invoke-interface {v0, v7}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    return-void

    .line 122
    :cond_4
    :try_start_0
    iget-wide v10, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$cancelEpoch:J

    invoke-virtual {v0, v10, v11}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->wasBondCancelledSince(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    const-string v0, "BluetoothBondHelper: createBond \u524d\u68c0\u6d4b\u5230\u53d6\u6d88"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 125
    invoke-interface {v0, v2}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 129
    :cond_5
    invoke-virtual {v0, v8, v9}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 130
    iget-object v1, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->createSppBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 131
    iget-object v8, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v8

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BluetoothBondHelper: createBond="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " attempt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 133
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-static {v9}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-nez v1, :cond_8

    if-eq v8, v5, :cond_8

    if-ne v8, v6, :cond_6

    goto :goto_0

    .line 143
    :cond_6
    iget v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    if-ge v0, v5, :cond_7

    .line 144
    invoke-static {}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v7, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v9, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    iget v10, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    iget-wide v11, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$cancelEpoch:J

    new-instance v6, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda1;

    invoke-direct/range {v6 .. v12}, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 148
    invoke-interface {v0, v2}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    return-void

    :cond_8
    :goto_0
    const-wide/16 v8, 0x2ee0

    .line 137
    invoke-virtual {v0, v8, v9}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 139
    invoke-interface {v0, v7}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 151
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BluetoothBondHelper: createBond \u5f02\u5e38 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    if-ge v0, v5, :cond_9

    .line 153
    invoke-static {}, Lcom/qianhe/yct/utils/BluetoothBondHelper;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    iget v9, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$attempt:I

    iget-wide v10, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$cancelEpoch:J

    new-instance v5, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/yct/utils/BluetoothBondHelper$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;IJ)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/utils/BluetoothBondHelper$1;->val$callback:Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;

    if-eqz v0, :cond_a

    .line 157
    invoke-interface {v0, v2}, Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;->onBondStarted(Z)V

    :cond_a
    return-void
.end method

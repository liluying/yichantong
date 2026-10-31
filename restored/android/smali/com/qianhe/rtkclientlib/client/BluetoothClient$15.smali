.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->scheduleSafeCreateBondWhenStackIdle(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$attempt:I


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1999
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-object p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2002
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mrefreshClearingBondState(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)V

    .line 2006
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$misOtherDeviceBonding(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2007
    iget v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$attempt:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7b49\u5f85\u65e7\u8bbe\u5907 BOND_NONE \u8d85\u65f6\uff0c\u4ecd\u5c1d\u8bd5\u914d\u5bf9\u65b0\u8bbe\u5907: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2009
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputclearingBondAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    goto :goto_0

    .line 2011
    :cond_1
    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 2012
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mcancelOtherBondProcesses(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;)V

    .line 2014
    :cond_2
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    iget v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$attempt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$mscheduleSafeCreateBondWhenStackIdle(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Ljava/lang/String;I)V

    return-void

    .line 2018
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbluetoothAdapter(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u84dd\u7259\u6808\u7a7a\u95f2\uff0c\u5f00\u59cb\u914d\u5bf9\u65b0\u8bbe\u5907: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->val$attempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2021
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$15;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$msafeCreateBond(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Landroid/bluetooth/BluetoothDevice;)V

    :cond_4
    :goto_1
    return-void
.end method

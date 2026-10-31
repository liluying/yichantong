.class public final synthetic Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;


# instance fields
.field public final synthetic f$0:Lcom/qh/libexcavator/Excavator;


# direct methods
.method public synthetic constructor <init>(Lcom/qh/libexcavator/Excavator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;->f$0:Lcom/qh/libexcavator/Excavator;

    return-void
.end method


# virtual methods
.method public final write([B)I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;->f$0:Lcom/qh/libexcavator/Excavator;

    invoke-virtual {v0, p1}, Lcom/qh/libexcavator/Excavator;->toBinary([B)I

    move-result p1

    return p1
.end method

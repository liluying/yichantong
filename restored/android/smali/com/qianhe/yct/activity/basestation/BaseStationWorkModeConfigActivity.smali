.class public Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BaseStationWorkModeConfigActivity.java"


# instance fields
.field private antennaHeight:D

.field private antennaHeigthEntity:Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;

.field private baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

.field private binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

.field private checkTooFar:Z

.field private currentGetBase:Z

.field private currentSetBase:Z

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private diffFormats:[Ljava/lang/String;

.field private fixedCoordinateStartupDialog:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

.field private isSetAntennaHeight:Z

.field private projectEntity:Lcom/qianhe/baselib/base/BaseProEntity;

.field private startupChange:Z


# direct methods
.method public static synthetic $r8$lambda$-5r4869CTCI_ZwX4fBgHipprsxk(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    const-string v0, "selectedproject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    const-string p1, "action"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 340
    const-string p1, "baseProEntity"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz p1, :cond_0

    .line 342
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iget v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 344
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->projectEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdiffFormats(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->diffFormats:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisSetAntennaHeight(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->isSetAntennaHeight:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprojectEntity(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->projectEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartupChange(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->startupChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAntennaHeigthType(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->getAntennaHeigthType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetWorkModeConfig(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->setWorkModeConfig()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 61
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 62
    new-instance v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    invoke-direct {v0}, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    return-void
.end method

.method private fomatDouble(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 518
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAntennaHeigthType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 611
    sget v0, Lcom/qianhe/yct/R$string;->high_phase_center:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string p1, "PHASE"

    return-object p1

    .line 613
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->slant_height:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const-string p1, "SLOPE"

    return-object p1

    .line 615
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->vertical_height:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    const-string p1, "VERTICAL"

    return-object p1

    .line 617
    :cond_2
    sget v0, Lcom/qianhe/yct/R$string;->bottom_height:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 618
    const-string p1, "BOTTOM"

    return-object p1

    .line 620
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private getAntennaHeigthTypeDes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 598
    const-string v0, "PHASE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    sget p1, Lcom/qianhe/yct/R$string;->high_phase_center:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 600
    :cond_0
    const-string v0, "SLOPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    sget p1, Lcom/qianhe/yct/R$string;->slant_height:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 602
    :cond_1
    const-string v0, "VERTICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    sget p1, Lcom/qianhe/yct/R$string;->vertical_height:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 604
    :cond_2
    const-string v0, "BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 605
    sget p1, Lcom/qianhe/yct/R$string;->bottom_height:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 607
    :cond_3
    const-string/jumbo p1, "\u672a\u77e5"

    return-object p1
.end method

.method private getModeDes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 624
    sget-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->ROVER:Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    sget p1, Lcom/qianhe/yct/R$string;->mobile_station:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 626
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->BASE:Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 627
    sget p1, Lcom/qianhe/yct/R$string;->base_station:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 629
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->static_station:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "workMode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltBase:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/qianhe/baselib/enums/WorkModeEnum;->BASE:Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtBaseName:Landroid/widget/EditText;

    const-string v1, "baseName"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "cutoffAngle"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "pdop"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "diffType"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "startMode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigthType:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "antennaHeigthType"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigth:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "antennaHeigth"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->ivCurrent:Landroid/widget/ImageView;

    const-string v1, "isCurrentSel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "lon"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "lat"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtMeasureEllipsoidHeight:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "elev"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtDiffAge:Lcom/qianhe/yct/view/NumericEditText;

    const-string v1, "diffAge"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltRover:Landroid/widget/LinearLayout;

    const-string v1, "roverVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltFixedStartup:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "staticVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setWorkModeConfig()V
    .locals 14

    .line 549
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u00b0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->base_station:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_6

    .line 551
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->ivCurrent:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 552
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-wide v4, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->elev:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 553
    iget-object v4, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 554
    iget-object v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$string;->dynamic_coordinate_startup:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "AUTO"

    if-eqz v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    const-string v5, "REPEAT"

    .line 561
    :goto_0
    iget-object v7, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v7}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    iget-object v9, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-wide v9, v9, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lon:D

    const/4 v11, 0x1

    cmpl-double v12, v7, v9

    if-eqz v12, :cond_1

    iget-object v7, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v7, v7, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v7}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    iget-object v9, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-wide v12, v9, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lat:D

    cmpl-double v10, v7, v12

    if-eqz v10, :cond_1

    iget-wide v7, v9, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->elev:D

    iget-wide v9, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeight:D

    sub-double/2addr v7, v9

    iget-object v9, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v9, v9, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtMeasureEllipsoidHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v9}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v9

    cmpl-double v12, v7, v9

    if-eqz v12, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 562
    :goto_1
    iget-boolean v8, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->startupChange:Z

    if-nez v8, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v7, :cond_2

    goto :goto_3

    .line 577
    :cond_2
    iput-boolean v11, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentSetBase:Z

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET,BASE,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    if-eqz v6, :cond_3

    iget-object v3, v6, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ENCA,"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v2, v3, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 563
    :cond_4
    :goto_3
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentSetBase:Z

    .line 565
    new-instance v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    invoke-direct {v1}, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;-><init>()V

    .line 566
    iget-object v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-object v3, v3, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    .line 568
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    .line 569
    iput-object v4, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->diffFormat:Ljava/lang/String;

    .line 570
    iput-object v5, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->startMode:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 572
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigthType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->getAntennaHeigthType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET,ANTENNA_HEIGHT,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->antennaOrder:Ljava/lang/String;

    .line 575
    :cond_5
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showFixedCoordinateStartupDialog(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V

    return-void

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/qianhe/yct/R$string;->mobile_station:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET,ROVER,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtDiffAge:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtBaseName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v2, v3, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private showFixedCoordinateStartupDialog(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V
    .locals 3

    .line 367
    new-instance v0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fixedCoordinateStartupDialog:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FixedCoordinateStartupDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    const-string v1, "baseProEntity"

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->projectEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 371
    const-string v1, "newInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 372
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fixedCoordinateStartupDialog:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 373
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fixedCoordinateStartupDialog:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    new-instance v0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$14;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$14;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->setOnCloseListener(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$OnCloseListener;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 645
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    :cond_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$9;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    const-string v2, "baseworkmode"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$10;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    const-string v2, "basecutoffangle"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$11;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    const-string v2, "basedifftype"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$12;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    const-string v2, "basestartmode"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    const-string v2, "selectedproject"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$13;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    const-string v2, "baseantennaheigthtype"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->mode_config:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 395
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 9

    .line 674
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    const-string v1, "cancelStr"

    const-string v2, "btnStr"

    const-string/jumbo v3, "tip"

    const-string v4, "TipsDialogFragment"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->startMode:Ljava/lang/String;

    const-string v5, "AUTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 676
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 677
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 678
    sget v5, Lcom/qianhe/yct/R$string;->base_mode_error:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget v2, Lcom/qianhe/yct/R$string;->ignore:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 682
    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$15;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$15;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 693
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->startupChange:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\u00b0"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget v5, v5, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-wide v7, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    cmpl-double v0, v5, v7

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigthType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeigthEntity:Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;

    iget-object v5, v5, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->way:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->getAntennaHeigthTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeight:D

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_1

    goto :goto_0

    .line 713
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 694
    :cond_2
    :goto_0
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 696
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 697
    sget v5, Lcom/qianhe/yct/R$string;->parameter_changes:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    sget v2, Lcom/qianhe/yct/R$string;->ignore:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 701
    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$16;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$16;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    .line 74
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    :goto_0
    iput-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,SERIAL"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$1;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAdvanced:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$2;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$3;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$4;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$5;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltCurrentCoord:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$6;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigthType:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$7;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity$8;-><init>(Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtBaseName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "base_deviceSn"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 213
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->restoreData(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 719
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 720
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 526
    iget-wide v0, p1, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->height:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeight:D

    .line 527
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeigthEntity:Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;

    .line 528
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigthType:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/AntennaHeigthEntity;->way:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->getAntennaHeigthTypeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigth:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeight:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,MODE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 488
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;->dataformatList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;->dataformatList:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->diffFormats:[Ljava/lang/String;

    .line 490
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_arrow_bottom_black:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 491
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 492
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->diffFormats:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->diffFormats:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseTooFarEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 441
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->checkTooFar:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 442
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->checkTooFar:Z

    .line 443
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fixedCoordinateStartupDialog:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    if-eqz p1, :cond_0

    .line 444
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fixedCoordinateStartupDialog:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    .line 447
    :cond_0
    new-instance p1, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TipsDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    sget v1, Lcom/qianhe/yct/R$string;->base_too_far:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnStr"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 459
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    .line 460
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentGetBase:Z

    if-eqz v2, :cond_4

    .line 461
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentGetBase:Z

    .line 462
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltRover:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    iget v4, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fomatDouble(F)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "%s\u00b0"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v4, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    invoke-virtual {p0, v4, v5}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->startMode:Ljava/lang/String;

    const-string v5, "REPEAT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/qianhe/yct/R$string;->current_coordinates_start:I

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    sget v4, Lcom/qianhe/yct/R$string;->dynamic_coordinate_startup:I

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltFixedStartup:Landroid/widget/LinearLayout;

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->startMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v4, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lon:D

    invoke-virtual {p0, v4, v5, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v4, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lat:D

    invoke-virtual {p0, v4, v5, v3}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtMeasureEllipsoidHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-wide v3, p1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->elev:D

    iget-wide v5, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeight:D

    sub-double/2addr v3, v5

    const/4 p1, 0x3

    invoke-virtual {p0, v3, v4, p1}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->diffFormats:[Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    array-length p1, p1

    if-le p1, v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->baseInfo:Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    const-string v1, "base_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetBaseWorkModeResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 402
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetBaseWorkModeResponse;->mode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->getModeDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetBaseWorkModeResponse;->mode:Ljava/lang/String;

    sget-object v1, Lcom/qianhe/baselib/enums/WorkModeEnum;->BASE:Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 404
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentGetBase:Z

    .line 405
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,BASE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 406
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,BASE_DIFF_LIST"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 407
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetBaseWorkModeResponse;->mode:Ljava/lang/String;

    sget-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->ROVER:Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 410
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 411
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showFixedCoordinateStartupDialog(Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;)V

    return-void

    .line 413
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->not_connected_basestation:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RoverStationResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltBase:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltRover:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    iget v2, p1, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;->cutoffAngle:F

    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->fomatDouble(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "%s\u00b0"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtDiffAge:Lcom/qianhe/yct/view/NumericEditText;

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/RoverStationResponse;->diffAge:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 537
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->isSetAntennaHeight:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->isSetAntennaHeight:Z

    .line 539
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-wide v0, p1, Lcom/qianhe/rtkclientlib/event/SetAntennaHeightResponse;->heigth:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->antennaHeight:D

    .line 541
    invoke-direct {p0}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->setWorkModeConfig()V

    return-void

    .line 543
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->antenna_config_fail:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetBaseStationResponse;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->checkTooFar:Z

    .line 422
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->startupChange:Z

    .line 423
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentSetBase:Z

    if-eqz v1, :cond_2

    .line 424
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v3, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "GET,ANTENNA_HEIGHT"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 425
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetBaseStationResponse;->result:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->diffFormats:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    if-nez p1, :cond_1

    .line 430
    sget p1, Lcom/qianhe/yct/R$string;->base_not_support_encrypted_diff:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    goto :goto_0

    .line 432
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->config_fail:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 436
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->currentSetBase:Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetRoverStationResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 499
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetRoverStationResponse;->result:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->config_fail:I

    goto :goto_0

    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 219
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 220
    sget v0, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,ANTENNA_HEIGHT"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvWorkMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "workMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtBaseName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baseName"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvCutoffAngle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutoffAngle"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pdop"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvDiffType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diffType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvStartMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigthType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "antennaHeigthType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->tvAntennaHeigth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "antennaHeigth"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->ivCurrent:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "isCurrentSel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lon"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtMeasureEllipsoidHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elev"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->edtDiffAge:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diffAge"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "baseVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltRover:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "roverVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationWorkmodeBinding;->lltFixedStartup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "staticVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 3

    .line 660
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/qianhe/yct/dialog/TipsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/TipsDialogFragment;-><init>()V

    .line 662
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "TipsDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 663
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 664
    const-string/jumbo v2, "tip"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string p1, "btnStr"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string p1, "cancelStr"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 668
    invoke-virtual {v0, p4}, Lcom/qianhe/yct/dialog/TipsDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

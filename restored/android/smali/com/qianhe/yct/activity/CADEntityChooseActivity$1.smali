.class Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;
.super Landroid/os/Handler;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Landroid/os/Looper;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    move-object/from16 v3, p1

    .line 172
    iget v3, v3, Landroid/os/Message;->what:I

    if-eq v3, v1, :cond_2

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_1

    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 175
    :cond_2
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v3

    iget-object v4, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v5

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v7

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetphoneHeading(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/qh/xcad/XCadView;->setXCadVehiclePosition(DDDZ)V

    .line 177
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v3

    iget-object v4, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v9

    sub-double/2addr v9, v7

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v11

    add-double/2addr v11, v7

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v13

    add-double/2addr v13, v7

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetphoneHeading(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v7

    move-wide v15, v13

    move-wide v13, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v15

    invoke-virtual/range {v4 .. v14}, Lcom/qh/xcad/XCadView;->setXCadExcavatorBucketPosition(DDDDD)V

    .line 181
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetsecond(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    .line 183
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3, v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputsecond(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)V

    .line 201
    :cond_3
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityCadEntityChooseBinding;->cadView:Lcom/qh/xcad/XCadView;

    new-instance v4, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    const-wide v7, 0x41ec61383de0c49cL    # 3.809067503024E9

    const-string/jumbo v9, "\u8d77\u70b9"

    const-wide v5, 0x41be17ed8f4dd2f2L    # 5.04884623304E8

    invoke-direct/range {v4 .. v9}, Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;-><init>(DDLjava/lang/String;)V

    new-array v5, v1, [Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;

    aput-object v4, v5, v2

    invoke-virtual {v3, v5, v1, v1, v1}, Lcom/qh/xcad/XCadView;->setXCadItemAreaPoint([Lcom/qh/xcad/XCadItemAreaPoint$XCadItemPointInfo;ZZZ)V

    .line 207
    iget-object v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetsecond(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputsecond(Lcom/qianhe/yct/activity/CADEntityChooseActivity;I)V

    .line 208
    iget-object v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    sub-double/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputstartPositionX(Lcom/qianhe/yct/activity/CADEntityChooseActivity;D)V

    .line 209
    iget-object v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetsingle(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Z

    move-result v3

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v6

    add-double/2addr v6, v4

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)D

    move-result-wide v6

    sub-double/2addr v6, v4

    :goto_1
    invoke-static {v2, v6, v7}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputstartPositionY(Lcom/qianhe/yct/activity/CADEntityChooseActivity;D)V

    .line 210
    iget-object v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgetsingle(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fputsingle(Lcom/qianhe/yct/activity/CADEntityChooseActivity;Z)V

    .line 211
    iget-object v2, v0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$1;->this$0:Lcom/qianhe/yct/activity/CADEntityChooseActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/CADEntityChooseActivity;->-$$Nest$fgettestHandler(Lcom/qianhe/yct/activity/CADEntityChooseActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.class public final synthetic Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

.field public final synthetic f$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iput-object p3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$3:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$0:Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$1:Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticLambda15;->f$3:Landroidx/appcompat/app/AlertDialog;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcom/qianhe/yct/activity/EngineeringCreateActivity;->$r8$lambda$xUGfEqhvp7t0ytGBo-jk9XOn6cU(Lcom/qianhe/yct/activity/EngineeringCreateActivity;Lcom/qianhe/yct/activity/EngineeringCreateActivity$EllipsoidPickerAdapter;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

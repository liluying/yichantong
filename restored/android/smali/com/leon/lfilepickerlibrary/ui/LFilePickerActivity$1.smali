.class Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$1;
.super Ljava/lang/Object;
.source "LFilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$1;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity$1;->this$0:Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;

    invoke-virtual {p1}, Lcom/leon/lfilepickerlibrary/ui/LFilePickerActivity;->onBackPressed()V

    return-void
.end method

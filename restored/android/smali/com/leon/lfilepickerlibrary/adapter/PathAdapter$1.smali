.class Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;
.super Ljava/lang/Object;
.source "PathAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->onBindViewHolder(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$holder:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;Ljava/io/File;Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iput-object p2, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$holder:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

    iput p4, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$holder:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$holder:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;

    invoke-static {v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;->access$300(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$PathViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iget-object p1, p1, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->onItemClickListener:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;

    iget v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;->click(I)V

    return-void
.end method

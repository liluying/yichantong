.class Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iput p2, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iget-object p1, p1, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->onItemClickListener:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;

    iget v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$OnItemClickListener;->click(I)V

    return-void
.end method

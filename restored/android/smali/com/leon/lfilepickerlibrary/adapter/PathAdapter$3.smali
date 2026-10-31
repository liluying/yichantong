.class Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;
.super Ljava/lang/Object;
.source "PathAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 111
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    iput p2, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;->this$0:Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;

    invoke-static {p1}, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;->access$500(Lcom/leon/lfilepickerlibrary/adapter/PathAdapter;)[Z

    move-result-object p1

    iget v0, p0, Lcom/leon/lfilepickerlibrary/adapter/PathAdapter$3;->val$position:I

    aput-boolean p2, p1, v0

    return-void
.end method

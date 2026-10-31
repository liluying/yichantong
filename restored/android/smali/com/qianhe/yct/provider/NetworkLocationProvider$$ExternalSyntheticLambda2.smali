.class public final synthetic Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda2;->f$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->$r8$lambda$D_PljnBjn2v_CplyEn6IJfLI-aQ(Lcom/qianhe/yct/provider/NetworkLocationProvider;Landroid/location/Location;)V

    return-void
.end method

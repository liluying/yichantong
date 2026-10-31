.class Lcom/qianhe/yct/view/map/GoogleMapEngine$1;
.super Ljava/lang/Object;
.source "GoogleMapEngine.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/map/GoogleMapEngine;->attach(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/map/GoogleMapEngine;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/map/GoogleMapEngine;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/view/map/GoogleMapEngine$1;->this$0:Lcom/qianhe/yct/view/map/GoogleMapEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 0
    return-void
.end method

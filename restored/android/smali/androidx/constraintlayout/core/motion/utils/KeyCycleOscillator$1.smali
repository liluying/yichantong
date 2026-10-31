.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V
    .locals 0

    .line 190
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;->this$0:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;)I
    .locals 0

    const/4 p1, 0x0

    .line 193
    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 190
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;->compare(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;)I

    move-result p1

    return p1
.end method

.class public abstract Lpl/droidsonroids/gif/GifDrawableInit;
.super Ljava/lang/Object;
.source "GifDrawableInit.java"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mInputSource:Lpl/droidsonroids/gif/InputSource;

.field private mIsRenderingTriggeredOnDraw:Z

.field private mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

.field private final mOptions:Lpl/droidsonroids/gif/GifOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    .line 32
    new-instance v0, Lpl/droidsonroids/gif/GifOptions;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifOptions;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mOptions:Lpl/droidsonroids/gif/GifOptions;

    return-void
.end method


# virtual methods
.method public build()Lpl/droidsonroids/gif/GifDrawable;
    .locals 5

    .line 61
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v3, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mIsRenderingTriggeredOnDraw:Z

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mOptions:Lpl/droidsonroids/gif/GifOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/InputSource;->createGifDrawable(Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLpl/droidsonroids/gif/GifOptions;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source is not set"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public from(Landroid/content/res/Resources;I)Lpl/droidsonroids/gif/GifDrawableInit;
    .locals 1

    .line 259
    new-instance v0, Lpl/droidsonroids/gif/InputSource$ResourcesSource;

    invoke-direct {v0, p1, p2}, Lpl/droidsonroids/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    .line 260
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawableInit;->self()Lpl/droidsonroids/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method public options(Lpl/droidsonroids/gif/GifOptions;)Lpl/droidsonroids/gif/GifDrawableInit;
    .locals 1

    .line 146
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawableInit;->mOptions:Lpl/droidsonroids/gif/GifOptions;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifOptions;->setFrom(Lpl/droidsonroids/gif/GifOptions;)V

    .line 147
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawableInit;->self()Lpl/droidsonroids/gif/GifDrawableInit;

    move-result-object p1

    return-object p1
.end method

.method protected abstract self()Lpl/droidsonroids/gif/GifDrawableInit;
.end method

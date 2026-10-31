.class Lcom/qianhe/yct/MainActivity$5;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/MainActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/MainActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity$5;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity$5;->this$0:Lcom/qianhe/yct/MainActivity;

    invoke-static {v0}, Lcom/qianhe/yct/MainActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/yct/databinding/ActivityMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->bottomNav:Lcom/qianhe/yct/view/SimpleBottomNav;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/view/SimpleBottomNav;->setSelectedIndex(I)V

    return-void
.end method

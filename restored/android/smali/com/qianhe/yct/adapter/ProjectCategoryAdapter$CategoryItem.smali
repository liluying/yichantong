.class public Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;
.super Ljava/lang/Object;
.source "ProjectCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryItem"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private selected:Z

.field private type:Lcom/qianhe/baselib/enums/ProjectEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->name:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->type:Lcom/qianhe/baselib/enums/ProjectEnum;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/qianhe/baselib/enums/ProjectEnum;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->type:Lcom/qianhe/baselib/enums/ProjectEnum;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->selected:Z

    return-void
.end method

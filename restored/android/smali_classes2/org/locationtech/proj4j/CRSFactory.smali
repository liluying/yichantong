.class public Lorg/locationtech/proj4j/CRSFactory;
.super Ljava/lang/Object;
.source "CRSFactory.java"


# static fields
.field private static csReader:Lorg/locationtech/proj4j/io/Proj4FileReader;

.field private static registry:Lorg/locationtech/proj4j/Registry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/locationtech/proj4j/io/Proj4FileReader;

    invoke-direct {v0}, Lorg/locationtech/proj4j/io/Proj4FileReader;-><init>()V

    sput-object v0, Lorg/locationtech/proj4j/CRSFactory;->csReader:Lorg/locationtech/proj4j/io/Proj4FileReader;

    .line 40
    new-instance v0, Lorg/locationtech/proj4j/Registry;

    invoke-direct {v0}, Lorg/locationtech/proj4j/Registry;-><init>()V

    sput-object v0, Lorg/locationtech/proj4j/CRSFactory;->registry:Lorg/locationtech/proj4j/Registry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static splitParameters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createFromName(Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 1

    .line 83
    sget-object v0, Lorg/locationtech/proj4j/CRSFactory;->csReader:Lorg/locationtech/proj4j/io/Proj4FileReader;

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/io/Proj4FileReader;->getParameters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/proj4j/CRSFactory;->createFromParameters(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/UnknownAuthorityCodeException;

    invoke-direct {v0, p1}, Lorg/locationtech/proj4j/UnknownAuthorityCodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromParameters(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 0

    .line 106
    invoke-static {p2}, Lorg/locationtech/proj4j/CRSFactory;->splitParameters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/locationtech/proj4j/CRSFactory;->createFromParameters(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    move-result-object p1

    return-object p1
.end method

.method public createFromParameters(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    new-instance v0, Lorg/locationtech/proj4j/parser/Proj4Parser;

    sget-object v1, Lorg/locationtech/proj4j/CRSFactory;->registry:Lorg/locationtech/proj4j/Registry;

    invoke-direct {v0, v1}, Lorg/locationtech/proj4j/parser/Proj4Parser;-><init>(Lorg/locationtech/proj4j/Registry;)V

    .line 127
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/proj4j/parser/Proj4Parser;->parse(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    move-result-object p1

    return-object p1
.end method

.method public getRegistry()Lorg/locationtech/proj4j/Registry;
    .locals 1

    .line 50
    sget-object v0, Lorg/locationtech/proj4j/CRSFactory;->registry:Lorg/locationtech/proj4j/Registry;

    return-object v0
.end method

.method public readEpsgFromParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-static {p1}, Lorg/locationtech/proj4j/CRSFactory;->splitParameters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/proj4j/CRSFactory;->readEpsgFromParameters([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readEpsgFromParameters([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Lorg/locationtech/proj4j/CRSFactory;->csReader:Lorg/locationtech/proj4j/io/Proj4FileReader;

    invoke-virtual {v0, p1}, Lorg/locationtech/proj4j/io/Proj4FileReader;->readEpsgCodeFromFile([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

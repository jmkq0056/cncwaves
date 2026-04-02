.class public Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;
.super Ljava/lang/Object;
.source "WbemcliUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/WbemcliUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WmiResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cimTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private propertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private resultCount:I

.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/WbemcliUtil;

.field private vtTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/WbemcliUtil;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->this$0:Lcom/sun/jna/platform/win32/COM/WbemcliUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 377
    iput p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->resultCount:I

    .line 384
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->propertyMap:Ljava/util/Map;

    .line 385
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->vtTypeMap:Ljava/util/Map;

    .line 386
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->cimTypeMap:Ljava/util/Map;

    .line 387
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Enum;

    array-length v0, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 388
    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->propertyMap:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->vtTypeMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->cimTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;IILjava/lang/Enum;Ljava/lang/Object;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->add(IILjava/lang/Enum;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->incrementResultCount()V

    return-void
.end method

.method private add(IILjava/lang/Enum;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->propertyMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->vtTypeMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 451
    iget-object p4, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->vtTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->cimTypeMap:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 454
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->cimTypeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private incrementResultCount()V
    .locals 1

    .line 469
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->resultCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->resultCount:I

    return-void
.end method


# virtual methods
.method public getCIMType(Ljava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->cimTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getResultCount()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->resultCount:I

    return v0
.end method

.method public getValue(Ljava/lang/Enum;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->propertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVtType(Ljava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/WbemcliUtil$WmiResult;->vtTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.class final Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$getReaderLocations$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyResourceRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->getReaderLocations(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $deviceSerials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$getReaderLocations$1;->$deviceSerials:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$getReaderLocations$1;->invoke(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$withCurrentRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$getReaderLocations$1;->$deviceSerials:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->getReaderLocations(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1324:1\n1#2:1325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "T",
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 724
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getHardwareVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "unknown"

    :cond_1
    const-string v2, "HardwareVersion"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 723
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/extensions/ReaderExtensionsKt;->getConnectionType(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/api/rest/ConnectionType;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->addEnumTag(Ljava/util/Map;Lcom/stripe/proto/api/rest/ConnectionType;)V

    return-object v0
.end method

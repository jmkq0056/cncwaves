.class public final Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;
.super Ljava/lang/Object;
.source "NetworkStatusJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkStatusJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkStatusJsonAdapter.kt\ncom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1549#2:25\n1620#2,3:26\n37#3,2:29\n1#4:31\n*S KotlinDebug\n*F\n+ 1 NetworkStatusJsonAdapter.kt\ncom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter\n*L\n10#1:25\n10#1:26,3\n10#1:29,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0006H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;",
        "",
        "()V",
        "statuses",
        "",
        "",
        "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;",
        "fromJson",
        "status",
        "toJson",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final statuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    check-cast v0, Ljava/lang/Iterable;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    .line 10
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 25
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, [Lkotlin/Pair;

    .line 9
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    .line 8
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;->statuses:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .locals 1
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/json/NetworkStatusJsonAdapter;->statuses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    return-object p1
.end method

.method public final toJson(Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

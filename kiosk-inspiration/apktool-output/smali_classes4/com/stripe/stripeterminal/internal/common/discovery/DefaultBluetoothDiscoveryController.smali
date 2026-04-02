.class public final Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;
.super Ljava/lang/Object;
.source "DefaultBluetoothDiscoveryController.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultBluetoothDiscoveryController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultBluetoothDiscoveryController.kt\ncom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n766#2:91\n857#2,2:92\n1549#2:94\n1620#2,3:95\n1549#2:98\n1620#2,3:99\n*S KotlinDebug\n*F\n+ 1 DefaultBluetoothDiscoveryController.kt\ncom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController\n*L\n51#1:91\n51#1:92,2\n56#1:94\n56#1:95,3\n67#1:98\n67#1:99,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ&\u0010\u0011\u001a\u00020\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00160\u00150\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u0008\u0010\u001d\u001a\u00020\u0012H\u0002J\u0008\u0010\u001e\u001a\u00020\u0012H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "bluetoothScanner",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)V",
        "discoveredReaders",
        "",
        "",
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;",
        "removeStaleEntriesJob",
        "Lkotlinx/coroutines/Job;",
        "discover",
        "",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "onReaderDiscovered",
        "reader",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "deviceName",
        "removeStaleEntries",
        "stopDiscover",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion;

.field private static final POLL_TIME_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "BBBTDiscoveryController"


# instance fields
.field private final bluetoothScanner:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

.field private final clock:Lcom/stripe/time/Clock;

.field private final discoveredReaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

.field private removeStaleEntriesJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->Companion:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothScanner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->bluetoothScanner:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    .line 21
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 22
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->clock:Lcom/stripe/time/Clock;

    .line 25
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$onReaderDiscovered(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/core/hardware/Reader$BluetoothReader;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->onReaderDiscovered(Lcom/stripe/core/hardware/Reader$BluetoothReader;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$removeStaleEntries(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->removeStaleEntries()V

    return-void
.end method

.method private final onReaderDiscovered(Lcom/stripe/core/hardware/Reader$BluetoothReader;Ljava/lang/String;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;-><init>(Lcom/stripe/core/hardware/Reader;J)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 66
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 99
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    check-cast v1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    .line 67
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->getReader()Lcom/stripe/core/hardware/Reader;

    move-result-object v1

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 98
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 65
    invoke-interface {p1, p2}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDiscovery(Ljava/util/Set;)V

    return-void

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->clock:Lcom/stripe/time/Clock;

    invoke-interface {p2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->setTimeStamp(J)V

    return-void
.end method

.method private final removeStaleEntries()V
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 92
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->getTimeStamp()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 92
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 52
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 55
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 95
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 96
    check-cast v3, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    .line 56
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->getReader()Lcom/stripe/core/hardware/Reader;

    move-result-object v3

    .line 96
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 94
    check-cast v2, Ljava/lang/Iterable;

    .line 57
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDiscovery(Ljava/util/Set;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;",
            "Lcom/stripe/core/hardware/ConnectionType;",
            ")V"
        }
    .end annotation

    const-string v0, "readerClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p2, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v0, "BBBTDiscoveryController"

    const-string v1, "discoverDevices"

    invoke-virtual {p2, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discoveredReaders:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 33
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->bluetoothScanner:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;

    invoke-direct {v0, p1, p0}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;-><init>(Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->startScan$default(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 39
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$2;

    invoke-direct {p1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$2;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->removeStaleEntriesJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public stopDiscover()V
    .locals 3

    .line 77
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BBBTDiscoveryController"

    const-string v2, "stopDiscoverReaders"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->bluetoothScanner:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->stopScan()V

    .line 79
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->removeStaleEntriesJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 80
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->removeStaleEntriesJob:Lkotlinx/coroutines/Job;

    return-void
.end method

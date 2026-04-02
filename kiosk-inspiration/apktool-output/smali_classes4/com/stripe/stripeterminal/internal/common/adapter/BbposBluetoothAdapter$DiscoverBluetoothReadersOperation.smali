.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;
.source "BbposBluetoothAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscoverBluetoothReadersOperation"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposBluetoothAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,630:1\n49#2:631\n51#2:635\n46#3:632\n51#3:634\n105#4:633\n*S KotlinDebug\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation\n*L\n575#1:631\n575#1:635\n575#1:632\n575#1:634\n575#1:633\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J$\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\r0\u001b*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u001d0\u001bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e0\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "getConnectionType",
        "()Lcom/stripe/core/hardware/ConnectionType;",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "getReaderClasses",
        "()Ljava/util/List;",
        "timeout",
        "Lkotlin/time/Duration;",
        "getTimeout-UwyO8pc",
        "()J",
        "checkPrerequisites",
        "",
        "createTimeoutException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "transformDiscoveredReaders",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "",
        "adapter_release"
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
.field private final config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
            "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    .line 555
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0, p1, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    .line 553
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    return-void
.end method


# virtual methods
.method public checkPrerequisites()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 622
    invoke-super {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->checkPrerequisites()V

    .line 624
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getBluetoothAdapter$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "Bluetooth is disabled on your device, please turn it on."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public createTimeoutException()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    .line 571
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_SCAN_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Bluetooth scan timed out"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public getConnectionType()Lcom/stripe/core/hardware/ConnectionType;
    .locals 1

    .line 567
    sget-object v0, Lcom/stripe/core/hardware/ConnectionType;->BLUETOOTH:Lcom/stripe/core/hardware/ConnectionType;

    return-object v0
.end method

.method public getReaderClasses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    .line 558
    const-class v2, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    const-class v2, Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    const-class v2, Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getAppInfo(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getShopifyReadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-class v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    const-class v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout-UwyO8pc()J
    .locals 2

    .line 569
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.external.models.DiscoveryConfiguration.BluetoothDiscoveryConfiguration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;->getTimeout()I

    move-result v0

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transformDiscoveredReaders(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 576
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-direct {p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 587
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

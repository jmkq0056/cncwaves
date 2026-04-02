.class public final Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;
.super Ljava/lang/Object;
.source "ArmadaMonitor.kt"

# interfaces
.implements Lcom/stripe/core/updater/Monitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/core/updater/Monitor<",
        "Lkotlinx/coroutines/flow/Flow<",
        "+",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArmadaMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArmadaMonitor.kt\ncom/stripe/core/readerupdate/ArmadaMonitorImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1#2:159\n1747#3,3:160\n*S KotlinDebug\n*F\n+ 1 ArmadaMonitor.kt\ncom/stripe/core/readerupdate/ArmadaMonitorImpl\n*L\n141#1:160,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u0002`\u0004BU\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u0016\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010 \u001a\u00020\u0003H\u0082@\u00a2\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0002J\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\u00020\u0019*\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u001c*\u00020\u001d8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;",
        "Lcom/stripe/core/updater/Monitor;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/ArmadaMonitor;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "readerInfoRepository",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "readerProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/core/hardware/Reader;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/core/transaction/SettingsRepository;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "isUpdateNeeded",
        "",
        "(Lcom/stripe/core/readerupdate/UpdateSummary;)Z",
        "version",
        "",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "getVersion",
        "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;",
        "getUpdateSummary",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "needsKeyProfileUpdate",
        "isReaderMissingKeys",
        "bbposConfig",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "start",
        "readerupdate_release"
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
.field private final configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

.field private final embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoRepository:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

.field private final readerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

.field private final updateClient:Lcom/stripe/core/readerupdate/UpdateClient;


# direct methods
.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/core/transaction/SettingsRepository;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embeddedSoftwareVersionProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    .line 21
    iput-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    .line 22
    iput-object p3, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->readerInfoRepository:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    .line 23
    iput-object p4, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 24
    iput-object p5, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->readerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p6, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    .line 26
    iput-object p7, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getUpdateSummary(Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->getUpdateSummary(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isUpdateNeeded(Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;Lcom/stripe/core/readerupdate/UpdateSummary;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->isUpdateNeeded(Lcom/stripe/core/readerupdate/UpdateSummary;)Z

    move-result p0

    return p0
.end method

.method private final getUpdateSummary(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;

    iget v3, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;

    invoke-direct {v2, v1, v0}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;-><init>(Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 37
    iget v4, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/core/hardware/Reader;

    iget-object v2, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object v0, v1, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->readerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    if-eqz v0, :cond_1f

    .line 42
    iget-object v4, v1, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    iput-object v1, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$getUpdateSummary$1;->label:I

    invoke-virtual {v4, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->getClientConfigData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    .line 37
    :goto_1
    move-object v4, v0

    check-cast v4, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    .line 43
    iget-object v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->readerInfoRepository:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;->isReaderMissingKey()Z

    move-result v7

    .line 46
    :try_start_0
    iget-object v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    invoke-virtual {v0, v4}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v0
    :try_end_0
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 49
    iget-object v8, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v8}, Lcom/stripe/core/transaction/SettingsRepository;->getKeyProfileName()Ljava/lang/String;

    move-result-object v14

    if-eqz v7, :cond_1e

    .line 50
    move-object v8, v14

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_1e

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 51
    iget-object v0, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Recovering missing keys using local backup: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lkotlin/Pair;

    invoke-interface {v0, v8, v9}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 52
    new-instance v0, Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 53
    new-instance v19, Lcom/stripe/proto/model/config/BBPOSConfig;

    const/16 v21, 0x7ef

    const/16 v22, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v9 .. v22}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v27, 0x7f7

    const/16 v28, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v15, v0

    move-object/from16 v19, v9

    .line 52
    invoke-direct/range {v15 .. v28}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    :goto_2
    new-instance v8, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    sget-object v9, Lcom/stripe/core/readerupdate/UpdateState;->INSTALLING_UPDATE:Lcom/stripe/core/readerupdate/UpdateState;

    invoke-direct {v8, v9}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;-><init>(Lcom/stripe/core/readerupdate/UpdateState;)V

    .line 64
    invoke-virtual {v8, v0}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setFullConfig(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object v8

    .line 66
    iget-object v9, v0, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-nez v9, :cond_4

    new-instance v10, Lcom/stripe/proto/model/config/BBPOSConfig;

    const/16 v22, 0x7ff

    const/16 v23, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v10 .. v23}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v10

    .line 68
    :cond_4
    iget-object v10, v9, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v10, :cond_5

    .line 70
    invoke-direct {v2, v10}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->getVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    move-object v11, v6

    :goto_3
    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_7

    .line 71
    invoke-direct {v2, v10}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->getVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_7
    move-object v11, v6

    :goto_4
    iget-object v12, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v12}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getConfigVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move-object v10, v6

    .line 74
    :goto_6
    sget-object v11, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->INSTANCE:Lcom/stripe/core/readerupdate/UpdateNecessityChecker;

    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->getShouldUpdateConfigWithMobilePosConfig()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_7

    :cond_9
    move-object v10, v6

    :goto_7
    if-eqz v10, :cond_a

    .line 76
    invoke-virtual {v8, v10}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setConfigSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 78
    :cond_a
    iget-object v10, v9, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v10, :cond_b

    .line 80
    invoke-direct {v2, v10}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->getVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_b
    move-object v11, v6

    :goto_8
    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_e

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_c

    goto :goto_a

    :cond_c
    if-eqz v10, :cond_d

    .line 81
    invoke-direct {v2, v10}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->getVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_d
    move-object v11, v6

    .line 82
    :goto_9
    iget-object v12, v2, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v12}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v12

    .line 81
    invoke-static {v11, v12, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_b

    :cond_e
    :goto_a
    move-object v10, v6

    .line 87
    :goto_b
    sget-object v11, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->INSTANCE:Lcom/stripe/core/readerupdate/UpdateNecessityChecker;

    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->getShouldUpdateFirmwareWithMobilePosConfig()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_c

    :cond_f
    move-object v10, v6

    :goto_c
    if-eqz v10, :cond_10

    .line 89
    invoke-virtual {v8, v10}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setFirmwareSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 91
    :cond_10
    iget-object v10, v9, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    .line 93
    sget-object v11, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->INSTANCE:Lcom/stripe/core/readerupdate/UpdateNecessityChecker;

    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/UpdateNecessityChecker;->getShouldUpdateKeyProfileWithMobilePosConfig()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 94
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_11

    .line 95
    invoke-direct {v2, v7, v9}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->needsKeyProfileUpdate(ZLcom/stripe/proto/model/config/BBPOSConfig;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_d

    :cond_11
    move-object v10, v6

    :goto_d
    if-eqz v10, :cond_12

    .line 97
    invoke-virtual {v8, v10}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setKeyProfileName(Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 99
    :cond_12
    iget-object v2, v9, Lcom/stripe/proto/model/config/BBPOSConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v2, :cond_13

    iget-object v2, v2, Lcom/stripe/proto/model/config/PinpadImageAssets;->splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    goto :goto_e

    :cond_13
    move-object v2, v6

    .line 101
    :goto_e
    invoke-virtual {v3}, Lcom/stripe/core/hardware/Reader;->getNeedsSplashScreenUpdate()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_14

    .line 102
    iget-object v3, v2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    goto :goto_f

    :cond_14
    move-object v3, v6

    :goto_f
    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_15

    goto :goto_12

    :cond_15
    if-eqz v2, :cond_16

    .line 103
    iget-object v3, v2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    goto :goto_10

    :cond_16
    move-object v3, v6

    :goto_10
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getImageId()Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :cond_17
    move-object v7, v6

    :goto_11
    invoke-static {v3, v7, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_13

    :cond_18
    :goto_12
    move-object v2, v6

    :goto_13
    if-eqz v2, :cond_19

    .line 105
    invoke-virtual {v8, v2}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setImageRef(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 107
    :cond_19
    iget-object v0, v0, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    .line 109
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1c

    .line 112
    invoke-virtual {v8}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->getConfigSpec$readerupdate_release()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v2

    if-nez v2, :cond_1b

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getConfigHash()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1a
    move-object v2, v6

    :goto_14
    invoke-static {v0, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    move-object v6, v0

    :cond_1c
    if-eqz v6, :cond_1d

    .line 114
    invoke-virtual {v8, v6}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setSettingsVersion(Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 116
    :cond_1d
    invoke-virtual {v8}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->build()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1e
    throw v0

    .line 39
    :cond_1f
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;

    const-string v2, "Not connected to reader"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v6, v3, v6}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final getVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private final isUpdateNeeded(Lcom/stripe/core/readerupdate/UpdateSummary;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getKeyProfileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getSettingsVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getImageRef()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final needsKeyProfileUpdate(ZLcom/stripe/proto/model/config/BBPOSConfig;)Z
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    const/4 v1, 0x3

    .line 127
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getEmvKeyProfileId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-interface {v0}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getMacKeyProfileId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "needsKeyProfileUpdate - Detected missing keys on device. Requesting key update."

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return v4

    .line 133
    :cond_0
    iget-object p1, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "needsKeyProfileUpdate - No target key version specified by Armada. Cannot update keys."

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return v3

    .line 136
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeysetId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "needsKeyProfileUpdate - No key information returned by the device. Requesting key update."

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return v4

    .line 139
    :cond_2
    iget-object p1, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 140
    iget-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v1, "needsKeyProfileUpdate - comparing device key profile IDs to Armada ID."

    new-array v2, v3, [Lkotlin/Pair;

    invoke-interface {p1, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 141
    check-cast v0, Ljava/lang/Iterable;

    .line 160
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_3

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    .line 161
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    iget-object v1, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    :cond_5
    return v3

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "needsKeyProfileUpdate - Falling back to PIN (PEK0) keyset ID comparison."

    new-array v1, v3, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 144
    iget-object p1, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    iget-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {p2}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeysetId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v4

    :cond_7
    return v3
.end method


# virtual methods
.method public start(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    new-instance p1, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$start$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stripe/core/readerupdate/ArmadaMonitorImpl$start$2;-><init>(Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/stripe/core/readerupdate/BbposApplicatorImpl;
.super Ljava/lang/Object;
.source "BbposApplicator.kt"

# interfaces
.implements Lcom/stripe/core/updater/Applicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/BbposApplicatorImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/core/updater/Applicator<",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lkotlinx/coroutines/flow/Flow<",
        "+",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposApplicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposApplicator.kt\ncom/stripe/core/readerupdate/BbposApplicatorImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 -2\u0018\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001j\u0002`\u0005:\u0001-BU\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017\u00a2\u0006\u0002\u0010\u0018J\u001c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001f\u001a\u00020\u0002H\u0096@\u00a2\u0006\u0002\u0010 J.\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002J\u001c\u0010*\u001a\u00020#*\u00020\u00022\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020#H\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\u00020\u001a*\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/BbposApplicatorImpl;",
        "Lcom/stripe/core/updater/Applicator;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "Lcom/stripe/core/readerupdate/BbposApplicator;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "readerProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/core/hardware/Reader;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "bbposAssetInstallProcessor",
        "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "weight",
        "",
        "Lcom/stripe/core/readerupdate/Update;",
        "getWeight",
        "(Lcom/stripe/core/readerupdate/Update;)I",
        "apply",
        "image",
        "(Lcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitProgessStatus",
        "curProgress",
        "",
        "asset",
        "assetIndex",
        "getCancellationException",
        "Ljava/lang/Exception;",
        "isAllUpdatesInstalled",
        "",
        "installProgress",
        "index",
        "progress",
        "Companion",
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


# static fields
.field private static final CONNECT_TIMEOUT_MILLIS:J

.field public static final Companion:Lcom/stripe/core/readerupdate/BbposApplicatorImpl$Companion;

.field public static final IDENTIFIER:Ljava/lang/String; = "update_operation"


# instance fields
.field private final bbposAssetInstallProcessor:Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

.field private final configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

.field private final deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

.field private final embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

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

.field private final readerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->Companion:Lcom/stripe/core/readerupdate/BbposApplicatorImpl$Companion;

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->CONNECT_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            "Lcom/stripe/device/DeviceInfoRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "io"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embeddedSoftwareVersionProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposAssetInstallProcessor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 35
    iput-object p2, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->readerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    .line 37
    iput-object p4, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    .line 38
    iput-object p5, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->bbposAssetInstallProcessor:Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    .line 39
    iput-object p6, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    .line 40
    iput-object p7, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$emitProgessStatus(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;FLcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->emitProgessStatus(FLcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBbposAssetInstallProcessor$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->bbposAssetInstallProcessor:Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    return-object p0
.end method

.method public static final synthetic access$getCONNECT_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 33
    sget-wide v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->CONNECT_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getCancellationException(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Z)Ljava/lang/Exception;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->getCancellationException(Z)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConfigurationHandler$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    return-object p0
.end method

.method public static final synthetic access$getDeviceInfoRepository$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/device/DeviceInfoRepository;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    return-object p0
.end method

.method public static final synthetic access$getEmbeddedSoftwareVersionProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    return-object p0
.end method

.method public static final synthetic access$getIo$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getReaderProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->readerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static final synthetic access$installProgress(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lcom/stripe/core/readerupdate/UpdatePackage;IF)F
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->installProgress(Lcom/stripe/core/readerupdate/UpdatePackage;IF)F

    move-result p0

    return p0
.end method

.method private final emitProgessStatus(FLcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/stripe/core/readerupdate/Update;",
            "I",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$emitProgessStatus$1;

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$emitProgessStatus$1;-><init>(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lcom/stripe/core/readerupdate/UpdatePackage;IFLcom/stripe/core/readerupdate/Update;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method private final getCancellationException(Z)Ljava/lang/Exception;
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Installation cancelled. Skipping remaining updates."

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    return-object p1

    .line 160
    :cond_0
    new-instance p1, Lcom/stripe/core/readerupdate/CancellationFailedException;

    const-string v0, "Cancellation was requested, but all updates were installed anyways."

    invoke-direct {p1, v0}, Lcom/stripe/core/readerupdate/CancellationFailedException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    return-object p1
.end method

.method private final getWeight(Lcom/stripe/core/readerupdate/Update;)I
    .locals 1

    .line 169
    instance-of v0, p1, Lcom/stripe/core/readerupdate/Update$Firmware;

    if-eqz v0, :cond_0

    const/16 p1, 0x41

    return p1

    .line 170
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/readerupdate/Update$Config;

    if-eqz v0, :cond_1

    const/16 p1, 0x1e

    return p1

    .line 171
    :cond_1
    instance-of v0, p1, Lcom/stripe/core/readerupdate/Update$Settings;

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 172
    :cond_2
    instance-of p1, p1, Lcom/stripe/core/readerupdate/Update$Keys;

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final installProgress(Lcom/stripe/core/readerupdate/UpdatePackage;IF)F
    .locals 4

    .line 176
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/readerupdate/Update;

    invoke-direct {p0, v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->getWeight(Lcom/stripe/core/readerupdate/Update;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    int-to-float v0, v2

    .line 177
    invoke-virtual {p1, v1, p2}, Lcom/stripe/core/readerupdate/UpdatePackage;->subList(II)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/readerupdate/Update;

    invoke-direct {p0, v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->getWeight(Lcom/stripe/core/readerupdate/Update;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 178
    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/UpdatePackage;->get(I)Lcom/stripe/core/readerupdate/Update;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->getWeight(Lcom/stripe/core/readerupdate/Update;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    mul-float/2addr v1, p2

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    return v1
.end method


# virtual methods
.method public apply(Lcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 44
    new-instance p2, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;-><init>(Lcom/stripe/core/readerupdate/UpdatePackage;Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/stripe/core/readerupdate/UpdatePackage;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->apply(Lcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;
.super Ljava/lang/Object;
.source "ProxyReaderListener.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;
.implements Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;
.implements Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;
.implements Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyReaderListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyReaderListener.kt\ncom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,196:1\n16#2:197\n*S KotlinDebug\n*F\n+ 1 ProxyReaderListener.kt\ncom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener\n*L\n35#1:197\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B=\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J \u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u001c\u0010\u001f\u001a\u00020\u00122\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J \u0010\'\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010*\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010+\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010,\u001a\u00020\u0012H\u0016J\u0010\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0017H\u0016J\u0010\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u000207H\u0016J\u001a\u00108\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0008\u00109\u001a\u0004\u0018\u00010)H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;",
        "Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;",
        "Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;",
        "Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;",
        "Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "handoffReaderListener",
        "tapToPayReaderListener",
        "internetReaderListener",
        "mobileReaderListener",
        "(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "assertRequiredListener",
        "",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "onBatteryLevelUpdate",
        "batteryLevel",
        "",
        "batteryStatus",
        "Lcom/stripe/stripeterminal/external/models/BatteryStatus;",
        "isCharging",
        "",
        "onDisconnect",
        "reason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "onFinishInstallingUpdate",
        "update",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onReaderReconnectFailed",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "onReaderReconnectStarted",
        "cancelReconnect",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "onReaderReconnectSucceeded",
        "onReportAvailableUpdate",
        "onReportLowBatteryWarning",
        "onReportReaderEvent",
        "event",
        "Lcom/stripe/stripeterminal/external/models/ReaderEvent;",
        "onReportReaderSoftwareUpdateProgress",
        "progress",
        "onRequestReaderDisplayMessage",
        "message",
        "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
        "onRequestReaderInput",
        "options",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;",
        "onStartInstallingUpdate",
        "cancelable",
        "public_release"
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
.field private final handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

.field private final internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

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

.field private final mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

.field private final tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;)V
    .locals 1

    const-string v0, "loggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    .line 31
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    .line 32
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    .line 33
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    .line 197
    const-class p2, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move-object p6, v0

    goto :goto_0

    :cond_3
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 28
    invoke-direct/range {p1 .. p6}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;)V

    return-void
.end method


# virtual methods
.method public final assertRequiredListener(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V
    .locals 6

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 42
    :goto_1
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 43
    :goto_2
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 38
    :goto_3
    invoke-static {p1, v0, v3, v4, v1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener_androidKt;->assertRequiredListener(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;ZZZZ)V

    return-void
.end method

.method public onBatteryLevelUpdate(FLcom/stripe/stripeterminal/external/models/BatteryStatus;Z)V
    .locals 4

    const-string v0, "batteryStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "onBatteryLevelUpdate"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onBatteryLevelUpdate(FLcom/stripe/stripeterminal/external/models/BatteryStatus;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 138
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array p3, v1, [Lkotlin/Pair;

    const-string v0, "Unexpected failure in ReaderListener.onBatteryLevelUpdate"

    invoke-interface {p2, v0, p1, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisconnect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;->onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;->onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->internetReaderListener:Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;->onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onDisconnect"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onFinishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x2

    .line 73
    new-array v1, v1, [Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "version"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 74
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "exception?"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v2

    .line 71
    const-string v2, "onFinishInstallingUpdate"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onFinishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 79
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v0, v3, [Lkotlin/Pair;

    const-string v1, "Unexpected failure in ReaderListener.onFinishInstallingUpdate"

    invoke-interface {p2, v1, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReaderReconnectFailed(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReaderReconnectFailed("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;->onReaderReconnectFailed(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReaderReconnectFailed(Lcom/stripe/stripeterminal/external/models/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 180
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onReaderReconnectFailed"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReaderReconnectStarted(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelReconnect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReaderReconnectStarted("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;->onReaderReconnectStarted(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReaderReconnectStarted(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 160
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array p3, v2, [Lkotlin/Pair;

    const-string v0, "Unexpected failure in ReaderListener.onReaderReconnectStarted"

    invoke-interface {p2, v0, p1, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReaderReconnectSucceeded(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReaderReconnectSucceeded("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;->onReaderReconnectSucceeded(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReaderReconnectSucceeded(Lcom/stripe/stripeterminal/external/models/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 170
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onReaderReconnectSucceeded"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReportAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 4

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReportAvailableUpdate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReportAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 88
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onReportAvailableUpdate"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReportLowBatteryWarning()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "onReportLowBatteryWarning"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReportLowBatteryWarning()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 125
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast v0, Ljava/lang/Throwable;

    new-array v1, v1, [Lkotlin/Pair;

    const-string v3, "Unexpected failure in ReaderListener.onReportLowBatteryWarning"

    invoke-interface {v2, v3, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReportReaderEvent(Lcom/stripe/stripeterminal/external/models/ReaderEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReportReaderEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;->onReportReaderEvent(Lcom/stripe/stripeterminal/external/models/ReaderEvent;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReportReaderEvent(Lcom/stripe/stripeterminal/external/models/ReaderEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 116
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onReportReaderEvent"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReportReaderSoftwareUpdateProgress(F)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReportReaderSoftwareUpdateProgress("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onReportReaderSoftwareUpdateProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onReportReaderSoftwareUpdateProgress"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onRequestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestReaderDisplayMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onRequestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 106
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onRequestReaderDisplayMessage"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onRequestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V
    .locals 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestReaderInput("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onRequestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 97
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v2, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in ReaderListener.onRequestReaderInput"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onStartInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 5

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x3

    .line 50
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "version"

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 51
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getComponents()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "components"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    .line 52
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "cancelable?"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 48
    const-string v2, "onStartInstallingUpdate"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->mobileReaderListener:Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onStartInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 57
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v0, v3, [Lkotlin/Pair;

    const-string v1, "Unexpected failure in ReaderListener.onStartInstallingUpdate"

    invoke-interface {p2, v1, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.class public final Lcom/stripe/offlinemode/dagger/OfflineLogModule;
.super Ljava/lang/Object;
.source "OfflineLogModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/offlinemode/dagger/OfflineLogModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineLogModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineLogModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineLogModule.kt\ncom/stripe/offlinemode/dagger/OfflineLogModule\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,107:1\n436#2,4:108\n436#2,4:116\n436#2,4:124\n457#3,4:112\n457#3,4:120\n457#3,4:128\n*S KotlinDebug\n*F\n+ 1 OfflineLogModule.kt\ncom/stripe/offlinemode/dagger/OfflineLogModule\n*L\n38#1:108,4\n47#1:116,4\n56#1:124,4\n39#1:112,4\n48#1:120,4\n57#1:128,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001+B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0004j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J,\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0007J,\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0004j\u0002`\u00162\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0008\u0010\u0017\u001a\u00020\u0018H\u0007JF\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00182\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010%\u001a\u00020&H\u0007J\u0010\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0007\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/OfflineLogModule;",
        "",
        "()V",
        "provideEndToEndLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineEndToEndLogger;",
        "builder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "provideOfflineDiscreteLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "provideOfflineLogRepository",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
        "provideOfflineStageLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineStageLogger;",
        "provideOfflineTraceHelper",
        "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
        "provideOfflineTraceLogger",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "traceManager",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
        "helper",
        "repository",
        "gson",
        "Lcom/google/gson/Gson;",
        "provideOfflineTraceManager",
        "Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;",
        "random",
        "Lkotlin/random/Random;",
        "Bindings",
        "offlinemode_release"
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
.field public static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideEndToEndLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideEndToEndLogger$1;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideEndToEndLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 108
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 39
    sget-object p1, Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideEndToEndLogger$2;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideEndToEndLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 112
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 40
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final provideOfflineDiscreteLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineDiscreteLogger$1;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineDiscreteLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 124
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 57
    sget-object p1, Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineDiscreteLogger$2;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineDiscreteLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 128
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 58
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final provideOfflineLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    return-object v0
.end method

.method public final provideOfflineStageLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineStageLogger$1;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineStageLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 116
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 48
    sget-object p1, Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineStageLogger$2;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule$provideOfflineStageLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 120
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 49
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final provideOfflineTraceHelper()Lcom/stripe/offlinemode/log/OfflineTraceHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 68
    new-instance v0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;

    invoke-direct {v0}, Lcom/stripe/offlinemode/log/OfflineTraceHelper;-><init>()V

    return-object v0
.end method

.method public final provideOfflineTraceLogger(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/time/Clock;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineTraceHelper;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/google/gson/Gson;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;
    .locals 12
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    const-string v3, "traceLogger"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clock"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "logWriter"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "traceManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "repository"

    move-object/from16 v7, p6

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "gson"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v3, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;

    .line 88
    new-instance v4, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;

    const-class v5, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;

    .line 89
    const-string v5, "getSimpleName(...)"

    const-string v8, "DefaultOfflineTraceManager"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v5, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;

    invoke-direct {v5, p1, v0, v2}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;-><init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/google/gson/Gson;)V

    move-object v9, v5

    check-cast v9, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;

    .line 94
    new-instance v5, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;

    invoke-direct {v5, p1, v2}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;-><init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/google/gson/Gson;)V

    move-object v10, v5

    check-cast v10, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    .line 95
    move-object v11, v1

    check-cast v11, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    move-object v6, p3

    move-object v5, v8

    move-object v8, p2

    .line 88
    invoke-direct/range {v4 .. v11}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)V

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 87
    invoke-direct {v3, v4, v0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)V

    check-cast v3, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    return-object v3
.end method

.method public final provideOfflineTraceManager(Lkotlin/random/Random;)Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;

    invoke-direct {v0, p1}, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;-><init>(Lkotlin/random/Random;)V

    return-object v0
.end method

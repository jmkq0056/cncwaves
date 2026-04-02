.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;
.super Ljava/lang/Object;
.source "DefaultOfflineForwardingService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final moshiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moshiProvider",
            "okHttpClientProvider",
            "baseUrlProvider",
            "offlineConfigHelperProvider",
            "userAgentProvider",
            "loggerProvider",
            "traceLoggerProvider",
            "logWriterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->moshiProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->baseUrlProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->userAgentProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->traceLoggerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p8, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moshiProvider",
            "okHttpClientProvider",
            "baseUrlProvider",
            "offlineConfigHelperProvider",
            "userAgentProvider",
            "loggerProvider",
            "traceLoggerProvider",
            "logWriterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moshi",
            "okHttpClientProvider",
            "baseUrlProvider",
            "offlineConfigHelper",
            "userAgentProvider",
            "logger",
            "traceLogger",
            "logWriter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/Moshi;",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;-><init>(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;
    .locals 9

    .line 71
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->moshiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/squareup/moshi/Moshi;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->baseUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->userAgentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/environment/UserAgentProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->traceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/loggingmodels/TraceLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/logwriter/LogWriter;

    invoke-static/range {v1 .. v8}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->newInstance(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->get()Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;

    move-result-object v0

    return-object v0
.end method

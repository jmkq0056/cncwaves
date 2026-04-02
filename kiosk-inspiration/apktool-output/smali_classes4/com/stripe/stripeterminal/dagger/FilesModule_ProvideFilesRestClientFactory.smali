.class public final Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;
.super Ljava/lang/Object;
.source "FilesModule_ProvideFilesRestClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final customRestInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final idempotencyRetryInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
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

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTokenInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLoggingRestClientInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->serviceUrlProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->idempotencyRetryInterceptorProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->sessionTokenInterceptorProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->customRestInterceptorProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->traceLoggingRestClientInterceptorProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFilesRestClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/jvmcore/restclient/RestInterceptor;Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 8

    .line 89
    sget-object v0, Lcom/stripe/stripeterminal/dagger/FilesModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/FilesModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/stripeterminal/dagger/FilesModule;->provideFilesRestClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/jvmcore/restclient/RestInterceptor;Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/restclient/RestClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->serviceUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->idempotencyRetryInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->sessionTokenInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;

    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->customRestInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->traceLoggingRestClientInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;

    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/logwriter/LogWriter;

    invoke-static/range {v1 .. v7}, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->provideFilesRestClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/jvmcore/restclient/RestInterceptor;Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->get()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v0

    return-object v0
.end method

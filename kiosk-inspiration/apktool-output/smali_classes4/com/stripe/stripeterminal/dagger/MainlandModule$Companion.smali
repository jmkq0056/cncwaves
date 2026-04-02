.class public final Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;
.super Ljava/lang/Object;
.source "MainlandModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/MainlandModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007JD\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J \u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;",
        "",
        "()V",
        "provideIdempotencyRetryInterceptor",
        "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
        "generator",
        "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
        "provideRestClient",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "serviceUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "idempotencyRetryInterceptor",
        "sessionTokenInterceptor",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
        "customRestInterceptor",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "traceLoggingRestClientInterceptor",
        "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideServiceUrlProvider",
        "environmentProvider",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
        "provideTraceLoggingRestClientInterceptor",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$VJllk9qfGET0l8dsjHQUz0NkFcg(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;->provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;-><init>()V

    return-void
.end method

.method private static final provideServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 1

    const-string v0, "$environmentProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Lcom/stripe/jvmcore/environment/EnvironmentProvider;->getEnvironment()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/Environment;->getStripeApiUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideIdempotencyRetryInterceptor(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "generator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    new-instance v1, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;

    invoke-direct {v1, p1}, Lcom/stripe/jvmcore/restclient/IdempotencyHeader;-><init>(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)V

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;-><init>(Lcom/stripe/jvmcore/restclient/IdempotencyHeader;)V

    return-object v0
.end method

.method public final provideRestClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/jvmcore/restclient/RestInterceptor;Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/jvmcore/restclient/RestInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "okHttpClientProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceUrlProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idempotencyRetryInterceptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTokenInterceptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customRestInterceptor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLoggingRestClientInterceptor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 69
    new-instance v1, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$provideRestClient$1;

    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$provideRestClient$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 70
    sget-object p1, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    check-cast p1, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 68
    invoke-direct {v0, v1, p1, p7, p2}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V

    .line 74
    check-cast p3, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    invoke-virtual {v0, p3}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 75
    check-cast p4, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    invoke-virtual {p1, p4}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p5}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 77
    check-cast p6, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    invoke-virtual {p1, p6}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->build()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object p1

    return-object p1
.end method

.method public final provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "environmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V

    return-object v0
.end method

.method public final provideTraceLoggingRestClientInterceptor(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "metricLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;-><init>(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method

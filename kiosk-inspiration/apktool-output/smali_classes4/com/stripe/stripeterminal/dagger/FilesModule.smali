.class public final Lcom/stripe/stripeterminal/dagger/FilesModule;
.super Ljava/lang/Object;
.source "FilesModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0015H\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/FilesModule;",
        "",
        "()V",
        "provideFilesRestClient",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "serviceUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "idempotencyRetryInterceptor",
        "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
        "sessionTokenInterceptor",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
        "customRestInterceptor",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "traceLoggingRestClientInterceptor",
        "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideFilesServiceUrlProvider",
        "environmentProvider",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/dagger/FilesModule;


# direct methods
.method public static synthetic $r8$lambda$Bkz7AROu45b8RwBGG-1z3fAJ2dY(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/stripe/stripeterminal/dagger/FilesModule;->provideFilesServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/FilesModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/FilesModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/FilesModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/FilesModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideFilesServiceUrlProvider$lambda$0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;
    .locals 1

    const-string v0, "$environmentProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lcom/stripe/jvmcore/environment/EnvironmentProvider;->getEnvironment()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/Environment;->getFilesApiUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideFilesRestClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/jvmcore/restclient/RestInterceptor;Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Files;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/jvmcore/restclient/RestInterceptor;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ReportTraces;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Files;
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

    .line 40
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    .line 41
    new-instance v1, Lcom/stripe/stripeterminal/dagger/FilesModule$provideFilesRestClient$1;

    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/dagger/FilesModule$provideFilesRestClient$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 42
    sget-object p1, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    check-cast p1, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 40
    invoke-direct {v0, v1, p1, p7, p2}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V

    .line 46
    check-cast p3, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    invoke-virtual {v0, p3}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 47
    check-cast p4, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    invoke-virtual {p1, p4}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p5}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 49
    check-cast p6, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    invoke-virtual {p1, p6}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomRestInterceptor(Lcom/stripe/jvmcore/restclient/RestInterceptor;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->build()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object p1

    return-object p1
.end method

.method public final provideFilesServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Files;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "environmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/stripe/stripeterminal/dagger/FilesModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/FilesModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V

    return-object v0
.end method

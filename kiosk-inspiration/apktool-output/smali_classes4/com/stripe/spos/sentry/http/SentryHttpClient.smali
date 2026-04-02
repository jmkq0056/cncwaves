.class public final Lcom/stripe/spos/sentry/http/SentryHttpClient;
.super Ljava/lang/Object;
.source "SentryHttpClient.kt"

# interfaces
.implements Lcom/stripe/spos/sentry/http/ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryHttpClient.kt\ncom/stripe/spos/sentry/http/SentryHttpClient\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 builders.kt\nio/ktor/client/request/BuildersKt\n+ 4 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 5 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 6 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n*L\n1#1,137:1\n11065#2:138\n11400#2,3:139\n233#3:142\n109#3,2:160\n22#3:162\n16#4,4:143\n21#4,10:150\n17#5,3:147\n17#5,3:164\n156#6:163\n*S KotlinDebug\n*F\n+ 1 SentryHttpClient.kt\ncom/stripe/spos/sentry/http/SentryHttpClient\n*L\n82#1:138\n82#1:139,3\n107#1:142\n107#1:160,2\n107#1:162\n109#1:143,4\n109#1:150,10\n109#1:147,3\n115#1:164,3\n115#1:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B)\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ+\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J$\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u001c\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/spos/sentry/http/SentryHttpClient;",
        "Lcom/stripe/spos/sentry/http/ErrorReporter;",
        "config",
        "Lcom/stripe/spos/sentry/http/SentryConfig;",
        "(Lcom/stripe/spos/sentry/http/SentryConfig;)V",
        "engine",
        "Lio/ktor/client/engine/HttpClientEngine;",
        "clock",
        "Lkotlinx/datetime/Clock;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;)V",
        "httpClient",
        "Lio/ktor/client/HttpClient;",
        "blockingReportError",
        "Lkotlin/Result;",
        "Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;",
        "error",
        "",
        "handled",
        "",
        "blockingReportError-gIAlu-s",
        "(Ljava/lang/Throwable;Z)Ljava/lang/Object;",
        "createReport",
        "Lcom/stripe/spos/sentry/http/models/Report;",
        "reportErrorAsync",
        "",
        "submitReport",
        "report",
        "submitReport-gIAlu-s",
        "(Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sentry-http"
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
.field private final config:Lcom/stripe/spos/sentry/http/SentryConfig;

.field private final httpClient:Lio/ktor/client/HttpClient;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/stripe/spos/sentry/http/SentryConfig;)V
    .locals 10

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttp;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;

    check-cast v0, Lio/ktor/client/engine/HttpClientEngineFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/ktor/client/engine/HttpClientEngineFactory$DefaultImpls;->create$default(Lio/ktor/client/engine/HttpClientEngineFactory;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/client/engine/HttpClientEngine;

    move-result-object v4

    .line 65
    sget-object v0, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    move-object v5, v0

    check-cast v5, Lkotlinx/datetime/Clock;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v6, p1

    .line 63
    invoke-direct/range {v3 .. v9}, Lcom/stripe/spos/sentry/http/SentryHttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p3, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    .line 38
    iput-object p4, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    new-instance p3, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;

    invoke-direct {p3, p0, p2}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lkotlinx/datetime/Clock;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p3}, Lio/ktor/client/HttpClientKt;->HttpClient(Lio/ktor/client/engine/HttpClientEngine;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->httpClient:Lio/ktor/client/HttpClient;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 38
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/spos/sentry/http/SentryHttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getConfig$p(Lcom/stripe/spos/sentry/http/SentryHttpClient;)Lcom/stripe/spos/sentry/http/SentryConfig;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    return-object p0
.end method

.method public static final synthetic access$submitReport-gIAlu-s(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/stripe/spos/sentry/http/SentryHttpClient;->submitReport-gIAlu-s(Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final createReport(Ljava/lang/Throwable;Z)Lcom/stripe/spos/sentry/http/models/Report;
    .locals 12

    .line 71
    new-instance v0, Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    .line 72
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->getLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v2}, Lcom/stripe/spos/sentry/http/SentryConfig;->getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->getLibraryVersionName()Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v3}, Lcom/stripe/spos/sentry/http/SentryConfig;->getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->getLibraryVersionCode()I

    move-result v3

    .line 71
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/spos/sentry/http/models/BuildConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSimpleName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v3, "getStackTrace(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 139
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, p1, v6

    .line 140
    check-cast v7, Ljava/lang/StackTraceElement;

    .line 83
    new-instance v8, Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame;

    .line 84
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    .line 85
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getClassName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "getMethodName(...)"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {v8, v9, v10, v7}, Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 81
    new-instance p1, Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;

    invoke-direct {p1, v3}, Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;-><init>(Ljava/util/List;)V

    .line 90
    new-instance v3, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;

    invoke-direct {v3, p2}, Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;-><init>(Z)V

    .line 78
    new-instance p2, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;

    invoke-direct {p2, v1, v2, p1, v3}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)V

    .line 77
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    invoke-direct {p2, p1}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;-><init>(Ljava/util/List;)V

    const/4 p1, 0x3

    .line 97
    new-array p1, p1, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->getLocaleCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v5

    .line 98
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "environment"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    .line 99
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->getAndroidOsVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_os_version"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p1, v2

    .line 96
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 100
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->getCustomTags()Ljava/util/Map;

    move-result-object v1

    .line 96
    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->config:Lcom/stripe/spos/sentry/http/SentryConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->getContexts()Lcom/stripe/spos/sentry/http/models/Contexts;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/stripe/spos/sentry/http/models/Report;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/stripe/spos/sentry/http/models/Report;-><init>(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)V

    return-object v2
.end method

.method private final submitReport-gIAlu-s(Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/spos/sentry/http/models/Report;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;

    iget v1, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_3
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/stripe/spos/sentry/http/SentryHttpClient;

    .line 107
    iget-object p2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->httpClient:Lio/ktor/client/HttpClient;

    .line 142
    new-instance v2, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v2}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 108
    invoke-virtual {v2}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    const-string v9, "store/"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8, v10, v4, v5}, Lio/ktor/http/URLBuilderKt;->appendPathSegments$default(Lio/ktor/http/URLBuilder;[Ljava/lang/String;ZILjava/lang/Object;)Lio/ktor/http/URLBuilder;

    if-nez p1, :cond_5

    .line 145
    sget-object p1, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 146
    const-class p1, Lcom/stripe/spos/sentry/http/models/Report;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p1

    .line 148
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 149
    const-class v8, Lcom/stripe/spos/sentry/http/models/Report;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v7, v8, p1}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object p1

    .line 146
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    goto :goto_1

    .line 150
    :cond_5
    instance-of v7, p1, Lio/ktor/http/content/OutgoingContent;

    if-eqz v7, :cond_6

    .line 151
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v2, v5}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 156
    const-class p1, Lcom/stripe/spos/sentry/http/models/Report;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p1

    .line 148
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 149
    const-class v8, Lcom/stripe/spos/sentry/http/models/Report;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v7, v8, p1}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object p1

    .line 156
    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    .line 160
    :goto_1
    sget-object p1, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {p1}, Lio/ktor/http/HttpMethod$Companion;->getPost()Lio/ktor/http/HttpMethod;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/ktor/client/request/HttpRequestBuilder;->setMethod(Lio/ktor/http/HttpMethod;)V

    .line 162
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    invoke-direct {p1, v2, p2}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    iput v6, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    invoke-virtual {p1, v0}, Lio/ktor/client/statement/HttpStatement;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_5

    .line 142
    :cond_7
    :goto_2
    check-cast p2, Lio/ktor/client/statement/HttpResponse;

    .line 106
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 113
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    :try_start_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lio/ktor/client/statement/HttpResponse;

    .line 114
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getStatus()Lio/ktor/http/HttpStatusCode;

    move-result-object p2

    invoke-static {p2}, Lio/ktor/http/HttpStatusCodeKt;->isSuccess(Lio/ktor/http/HttpStatusCode;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 163
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p1

    const-class p2, Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p2

    .line 165
    invoke-static {p2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 166
    const-class v3, Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object p2

    .line 163
    iput v4, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    invoke-virtual {p1, p2, v0}, Lio/ktor/client/call/HttpClientCall;->bodyNullable(Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    check-cast p2, Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;

    .line 113
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 163
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.stripe.spos.sentry.http.models.ErrorReportIdentifier"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_a
    iput v3, v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$submitReport$1;->label:I

    invoke-static {p1, v5, v0, v6, v5}, Lio/ktor/client/statement/HttpResponseKt;->bodyAsText$default(Lio/ktor/client/statement/HttpResponse;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    :goto_5
    return-object v1

    :cond_b
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :goto_7
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_c
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_8
    return-object p1
.end method


# virtual methods
.method public blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/stripe/spos/sentry/http/SentryHttpClient;->createReport(Ljava/lang/Throwable;Z)Lcom/stripe/spos/sentry/http/models/Report;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/stripe/spos/sentry/http/SentryHttpClient$blockingReportError$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/stripe/spos/sentry/http/SentryHttpClient$blockingReportError$1;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v0, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reportErrorAsync(Ljava/lang/Throwable;Z)V
    .locals 6

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/stripe/spos/sentry/http/SentryHttpClient;->createReport(Ljava/lang/Throwable;Z)Lcom/stripe/spos/sentry/http/models/Report;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/stripe/spos/sentry/http/SentryHttpClient$reportErrorAsync$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/stripe/spos/sentry/http/SentryHttpClient$reportErrorAsync$1;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

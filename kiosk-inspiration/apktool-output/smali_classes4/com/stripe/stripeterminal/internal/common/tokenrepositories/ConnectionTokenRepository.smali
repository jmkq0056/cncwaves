.class public final Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;
.super Ljava/lang/Object;
.source "ConnectionTokenRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionTokenRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionTokenRepository.kt\ncom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB)\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0016\u001a\u00020\u000bJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0014H\u0002J\u0008\u0010\u001a\u001a\u00020\u0014H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        "",
        "tokenProvider",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        "epochProvider",
        "Lkotlin/Function0;",
        "",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/ExecutorService;)V",
        "cachedToken",
        "",
        "cachedTokenExpiration",
        "Ljava/lang/Long;",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "future",
        "Ljava/util/concurrent/Future;",
        "clearToken",
        "",
        "getToken",
        "getTokenAndRefresh",
        "isCachedTokenExpired",
        "",
        "refreshToken",
        "waitForToken",
        "Companion",
        "common_publish"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

.field public static final OFFLINE_TOKEN:Ljava/lang/String; = "psst_offline_token"

.field private static final TIMEOUT_SECONDS:J = 0x3cL

.field private static final TOKEN_LIFETIME_MS:I = 0x1b7740


# instance fields
.field private cachedToken:Ljava/lang/String;

.field private cachedTokenExpiration:Ljava/lang/Long;

.field private final epochProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final tokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;


# direct methods
.method public static synthetic $r8$lambda$E3jiKptSRmL_4Kix0oKNLuuY5Aw(Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;)V
    .locals 0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->refreshToken$lambda$1(Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$Companion;

    .line 153
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ConnectionTokenManagement;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ConnectionTokenManagement;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tokenProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epochProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->tokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    .line 25
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->epochProvider:Lkotlin/jvm/functions/Function0;

    .line 27
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->executor:Ljava/util/concurrent/ExecutorService;

    .line 36
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->refreshToken()V

    return-void
.end method

.method public static final synthetic access$getLOGGER$cp()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 1

    .line 22
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-object v0
.end method

.method private final isCachedTokenExpired()Z
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedTokenExpiration:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->epochProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private final refreshToken()V
    .locals 3

    .line 96
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "refreshToken"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 97
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final refreshToken$lambda$1(Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->tokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    .line 100
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1;

    invoke-direct {v4, v2}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    check-cast v4, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;

    .line 99
    invoke-interface {v3, v4}, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;->fetchConnectionToken(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;)V

    .line 113
    :try_start_0
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$2;

    invoke-direct {v3, v2, v0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedToken:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->epochProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const v2, 0x1b7740

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedTokenExpiration:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 118
    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->exception:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 116
    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->exception:Ljava/lang/Exception;

    :goto_0
    return-void
.end method

.method private final waitForToken()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->future:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    check-cast v0, Ljava/lang/Throwable;

    .line 130
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 131
    const-string v2, "Error retrieving connection token"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->findTerminalExceptionOrWrap(Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 145
    check-cast v0, Ljava/lang/Throwable;

    .line 146
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 147
    const-string v2, "Timed out waiting for connection token"

    .line 145
    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->findTerminalExceptionOrWrap(Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 140
    check-cast v0, Ljava/lang/Throwable;

    .line 141
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 142
    const-string v2, "Interruption while waiting for connection token"

    .line 140
    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->findTerminalExceptionOrWrap(Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 135
    check-cast v0, Ljava/lang/Throwable;

    .line 136
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 137
    const-string v2, "Execution error while retrieving connection token"

    .line 135
    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->findTerminalExceptionOrWrap(Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final clearToken()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedToken:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedTokenExpiration:Ljava/lang/Long;

    .line 88
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->isCachedTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->exception:Ljava/lang/Exception;

    .line 75
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->refreshToken()V

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->waitForToken()V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedToken:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getTokenAndRefresh()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getToken()Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedToken:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedToken:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->cachedTokenExpiration:Ljava/lang/Long;

    .line 57
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->refreshToken()V

    return-object v0
.end method

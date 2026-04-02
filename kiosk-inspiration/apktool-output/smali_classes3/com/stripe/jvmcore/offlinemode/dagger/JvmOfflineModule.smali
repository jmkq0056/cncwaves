.class public final Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;
.super Ljava/lang/Object;
.source "JvmOfflineModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmOfflineModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOfflineModule.kt\ncom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,87:1\n16#2:88\n*S KotlinDebug\n*F\n+ 1 JvmOfflineModule.kt\ncom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule\n*L\n62#1:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u0008\u0010\u000f\u001a\u00020\u0006H\u0007J*\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;",
        "",
        "()V",
        "provideCompositeOfflineStatsRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;",
        "remoteOfflineStatisticsRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
        "directOfflineStatusDetailsRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
        "offlineListener",
        "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "provideReaderEventFetcher",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;",
        "provideRemoteOfflineStatisticsRepository",
        "providesUnAckedEventsHandler",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;",
        "fetcher",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
        "listener",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "Bindings",
        "offlinemode"
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
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCompositeOfflineStatsRepository(Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;
    .locals 3
    .param p4    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "remoteOfflineStatisticsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directOfflineStatusDetailsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    .line 41
    check-cast p1, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p4, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 40
    invoke-direct {v0, p1, p2, p4, p3}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;-><init>(Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;)V

    return-object v0
.end method

.method public final provideReaderEventFetcher()Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    invoke-direct {v0}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;-><init>()V

    return-object v0
.end method

.method public final provideRemoteOfflineStatisticsRepository()Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 30
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;

    invoke-direct {v0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;-><init>()V

    return-object v0
.end method

.method public final providesUnAckedEventsHandler(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;
    .locals 2
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;

    .line 88
    const-class v1, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 58
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

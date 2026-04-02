.class public final Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;
.super Ljava/lang/Object;
.source "JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final fetcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    .line 47
    iput-object p2, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->fetcherProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;-><init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesUnAckedEventsHandler(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;->providesUnAckedEventsHandler(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->fetcherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;

    iget-object v3, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;

    iget-object v4, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->providesUnAckedEventsHandler(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->get()Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;

    move-result-object v0

    return-object v0
.end method

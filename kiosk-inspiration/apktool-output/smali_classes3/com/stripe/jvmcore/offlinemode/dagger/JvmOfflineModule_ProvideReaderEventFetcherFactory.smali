.class public final Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;
.super Ljava/lang/Object;
.source "JvmOfflineModule_ProvideReaderEventFetcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;-><init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)V

    return-object v0
.end method

.method public static provideReaderEventFetcher(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;->provideReaderEventFetcher()Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    invoke-static {v0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;->provideReaderEventFetcher(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;->get()Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    move-result-object v0

    return-object v0
.end method

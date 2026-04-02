.class public interface abstract Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule$Bindings;
.super Ljava/lang/Object;
.source "JvmOfflineModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\'J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\'J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0016\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule$Bindings;",
        "",
        "bindCompositeOfflineStatsRepo",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
        "defaultOfflineStatusRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;",
        "bindOfflineKeyValueStore",
        "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
        "defaultOfflineKeyValueStore",
        "Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;",
        "bindOfflineStatsListener",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
        "remoteOfflineStatusDetailsRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
        "bindReaderEventFetcher",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
        "fetcher",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;",
        "bindUnAckedEventsHandler",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
        "handler",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;",
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


# virtual methods
.method public abstract bindCompositeOfflineStatsRepo(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;)Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineKeyValueStore(Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;)Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineStatsListener(Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;)Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindReaderEventFetcher(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindUnAckedEventsHandler(Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

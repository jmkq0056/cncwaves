.class public abstract Lcom/stripe/offlinemode/dagger/OfflineHelperModule$Bindings;
.super Ljava/lang/Object;
.source "OfflineHelperModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/dagger/OfflineHelperModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\'J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\'J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\'J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\'J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eH\'\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/OfflineHelperModule$Bindings;",
        "",
        "()V",
        "bindActivateReaderListener",
        "Lcom/stripe/offlinemode/OfflineReaderSetup;",
        "defaultOfflineEventHandler",
        "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;",
        "bindCustomHeadersProvider",
        "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
        "authenticatedRestClient",
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        "bindOfflineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "defaultOfflineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;",
        "bindOfflineEventHandler",
        "Lcom/stripe/offlinemode/OfflineEventHandler;",
        "bindOfflineIdGenerator",
        "Lcom/stripe/offlinemode/OfflineIdGenerator;",
        "offlineUUIDGenerator",
        "Lcom/stripe/offlinemode/OfflineUUIDGenerator;",
        "bindOfflineRequestHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
        "defaultOfflineRequestHelper",
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
        "bindOfflineSessionManager",
        "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
        "bindUpdateClientConfigHandler",
        "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
        "offlinemode_release"
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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindActivateReaderListener(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/offlinemode/OfflineReaderSetup;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindCustomHeadersProvider(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;)Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineConfigHelper(Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineEventHandler(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/offlinemode/OfflineEventHandler;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineIdGenerator(Lcom/stripe/offlinemode/OfflineUUIDGenerator;)Lcom/stripe/offlinemode/OfflineIdGenerator;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineRequestHelper(Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;)Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindOfflineSessionManager(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/offlinemode/helpers/OfflineSessionManager;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindUpdateClientConfigHandler(Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;)Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

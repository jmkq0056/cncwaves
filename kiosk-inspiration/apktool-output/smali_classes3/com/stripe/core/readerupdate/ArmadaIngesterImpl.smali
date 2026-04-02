.class public final Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;
.super Ljava/lang/Object;
.source "ArmadaIngester.kt"

# interfaces
.implements Lcom/stripe/core/updater/Ingester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/core/updater/Ingester<",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArmadaIngester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArmadaIngester.kt\ncom/stripe/core/readerupdate/ArmadaIngesterImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B=\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010\u00a2\u0006\u0002\u0010\u0011J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0002J\u0016\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0002H\u0096@\u00a2\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u00020\u001f*\u00020\u00142\u0006\u0010 \u001a\u00020!H\u0002J\u0014\u0010\"\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;",
        "Lcom/stripe/core/updater/Ingester;",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lcom/stripe/core/readerupdate/ArmadaIngester;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "readerProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/core/hardware/Reader;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "otaVersion",
        "",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "getOtaVersion",
        "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;",
        "downloadSettings",
        "Lcom/stripe/core/readerupdate/Update$Settings;",
        "summary",
        "downloadUpdates",
        "ingest",
        "coordinates",
        "(Lcom/stripe/core/readerupdate/UpdateSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toRemoteUpdate",
        "Lcom/stripe/core/readerupdate/RemoteUpdate;",
        "needsOtaUpdate",
        "",
        "updatePresignedUrls",
        "readerupdate_release"
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
.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final readerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final updateClient:Lcom/stripe/core/readerupdate/UpdateClient;


# direct methods
.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    .line 16
    iput-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->readerProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p3, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    .line 18
    iput-object p4, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final downloadSettings(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;)Lcom/stripe/core/readerupdate/Update$Settings;
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "downloadSettings"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 64
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getFullConfig()Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getSettingsVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getImageRef()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getImageRef()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadImage(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 76
    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-object v4, v0

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-object v5, p2

    check-cast v5, Ljava/lang/Throwable;

    new-array v7, v1, [Lkotlin/Pair;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 81
    :cond_2
    :goto_0
    new-instance p2, Lcom/stripe/core/readerupdate/Update$Settings;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getSettingsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, v3, p1}, Lcom/stripe/core/readerupdate/Update$Settings;-><init>(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object p2
.end method

.method private final downloadUpdates(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/UpdatePackage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;)",
            "Lcom/stripe/core/readerupdate/UpdatePackage;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "downloadUpdates"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/stripe/core/hardware/Reader;

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 41
    invoke-virtual {p3}, Lcom/stripe/core/hardware/Reader;->getNeedsOtaUpdate()Z

    move-result p3

    if-nez p3, :cond_0

    .line 42
    iget-object p3, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {p3}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p3

    iget-boolean p3, p3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    if-nez p3, :cond_0

    .line 43
    iget-object p3, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {p3}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p3

    iget-boolean p3, p3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    if-eqz p3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getKeyProfileName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance v2, Lcom/stripe/core/readerupdate/Update$Keys;

    new-instance v3, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;

    invoke-direct {v3, p3}, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;-><init>(Ljava/lang/String;)V

    check-cast v3, Lcom/stripe/core/readerupdate/RemoteUpdate;

    invoke-direct {v2, v3}, Lcom/stripe/core/readerupdate/Update$Keys;-><init>(Lcom/stripe/core/readerupdate/RemoteUpdate;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 48
    invoke-direct {p0, p3, v1}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->toRemoteUpdate(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Z)Lcom/stripe/core/readerupdate/RemoteUpdate;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 49
    new-instance v3, Lcom/stripe/core/readerupdate/Update$Config;

    invoke-direct {v3, p3}, Lcom/stripe/core/readerupdate/Update$Config;-><init>(Lcom/stripe/core/readerupdate/RemoteUpdate;)V

    goto :goto_1

    :cond_3
    move-object v3, v0

    .line 50
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 51
    invoke-direct {p0, p3, v1}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->toRemoteUpdate(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Z)Lcom/stripe/core/readerupdate/RemoteUpdate;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 52
    new-instance v0, Lcom/stripe/core/readerupdate/Update$Firmware;

    invoke-direct {v0, p3}, Lcom/stripe/core/readerupdate/Update$Firmware;-><init>(Lcom/stripe/core/readerupdate/RemoteUpdate;)V

    .line 54
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->downloadSettings(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;)Lcom/stripe/core/readerupdate/Update$Settings;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/stripe/core/readerupdate/UpdatePackage;

    invoke-direct {p2, v2, v3, v0, p1}, Lcom/stripe/core/readerupdate/UpdatePackage;-><init>(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/readerupdate/Update$Settings;)V

    return-object p2

    .line 37
    :cond_5
    new-instance p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;

    const-string p2, "Not connected to reader"

    const/4 p3, 0x2

    invoke-direct {p1, p2, v0, p3, v0}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method private final getOtaVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p1, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private final toRemoteUpdate(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Z)Lcom/stripe/core/readerupdate/RemoteUpdate;
    .locals 8

    if-eqz p2, :cond_0

    .line 107
    new-instance p2, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;

    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->getOtaVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/stripe/core/readerupdate/RemoteUpdate;

    return-object p2

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v0, p1, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    if-nez v0, :cond_1

    new-instance v1, Lcom/stripe/proto/model/common/UrlPb;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/common/UrlPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p2, v0}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadConfig(Lcom/stripe/proto/model/common/UrlPb;)Ljava/lang/String;

    move-result-object p2

    .line 110
    new-instance v0, Lcom/stripe/core/readerupdate/RemoteUpdate$Local;

    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->getOtaVersion(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/stripe/core/readerupdate/RemoteUpdate$Local;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/core/readerupdate/RemoteUpdate;

    return-object v0
.end method

.method private final updatePresignedUrls(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;)Lcom/stripe/core/readerupdate/UpdateSummary;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Expired S3 link. Updating presigned URLs"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 86
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/stripe/proto/model/common/ClientVersionSpecPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 88
    :goto_1
    invoke-virtual {p2, v0, v2}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadMobilePosConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p2

    .line 90
    iget-object p2, p2, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 91
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->toBuilder()Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 93
    iget-object v2, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setConfigSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 96
    iget-object v1, p2, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    :cond_4
    invoke-virtual {v0, v1}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->setFirmwareSpec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/core/readerupdate/UpdateSummary$Builder;

    .line 99
    :cond_5
    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateSummary$Builder;->build()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ingest(Lcom/stripe/core/readerupdate/UpdateSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    :try_start_0
    iget-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->readerProvider:Ljavax/inject/Provider;

    invoke-direct {p0, p1, p2, v0}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->downloadUpdates(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/UpdatePackage;

    move-result-object p1
    :try_end_0
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 26
    :catch_0
    iget-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    invoke-direct {p0, p1, p2}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->updatePresignedUrls(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;)Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->readerProvider:Ljavax/inject/Provider;

    invoke-direct {p0, p1, p2, v0}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->downloadUpdates(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/UpdatePackage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ingest(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/stripe/core/readerupdate/UpdateSummary;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;->ingest(Lcom/stripe/core/readerupdate/UpdateSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

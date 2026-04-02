.class public final Lcom/stripe/stripeterminal/dagger/OfflineModule;
.super Ljava/lang/Object;
.source "OfflineModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/device/dagger/ActiveLocationConfigModule;,
        Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;,
        Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;,
        Lcom/stripe/offlinemode/dagger/OfflineHelperModule;,
        Lcom/stripe/offlinemode/dagger/OfflineLogModule;,
        Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;,
        Lcom/stripe/offlinemode/dagger/OfflineStorageModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u0007H\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/OfflineModule;",
        "",
        "offlineListener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V",
        "bindsOfflineListener",
        "proxyOfflineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "bindsOfflineListener$sdkmanager_publish",
        "bindsOfflineStatusChangeListener",
        "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
        "bindsOfflineStatusChangeListener$sdkmanager_publish",
        "provideHealthCheckHttpUrl",
        "Lokhttp3/HttpUrl;",
        "provideProxyOfflineListener",
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


# instance fields
.field private final offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule;->offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    return-void
.end method


# virtual methods
.method public final bindsOfflineListener$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "proxyOfflineListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p1, Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    return-object p1
.end method

.method public final bindsOfflineStatusChangeListener$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "proxyOfflineListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    check-cast p1, Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;

    return-object p1
.end method

.method public final provideHealthCheckHttpUrl()Lokhttp3/HttpUrl;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 39
    const-string v1, "https"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 40
    const-string v1, "api.stripe.com"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 41
    const-string v1, "healthcheck"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final provideProxyOfflineListener()Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 33
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule;->offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;-><init>(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-object v0
.end method

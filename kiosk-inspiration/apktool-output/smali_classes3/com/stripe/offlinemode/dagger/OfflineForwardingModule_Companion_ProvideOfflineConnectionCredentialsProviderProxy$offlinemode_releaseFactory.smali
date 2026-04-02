.class public final Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;
.super Ljava/lang/Object;
.source "OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final credentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "credentialsProvider",
            "offlineListenerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->credentialsProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->offlineListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "credentialsProvider",
            "offlineListenerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "credentialsProvider",
            "offlineListener"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;->Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;->provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->credentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    iget-object v1, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->offlineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-static {v0, v1}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->get()Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;

    move-result-object v0

    return-object v0
.end method

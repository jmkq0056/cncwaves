.class public final Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;
.super Ljava/lang/Object;
.source "OfflineModule_BindsOfflineListener$sdkmanager_publishFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

.field private final proxyOfflineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/OfflineModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/OfflineModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static bindsOfflineListener$sdkmanager_publish(Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/OfflineModule;->bindsOfflineListener$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    return-object p0
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/OfflineModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/OfflineModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;-><init>(Lcom/stripe/stripeterminal/dagger/OfflineModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/external/callable/OfflineListener;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->bindsOfflineListener$sdkmanager_publish(Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->get()Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    move-result-object v0

    return-object v0
.end method

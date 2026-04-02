.class public final Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;
.super Ljava/lang/Object;
.source "OfflineModule_ProvideProxyOfflineListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/OfflineModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/OfflineModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;->module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/OfflineModule;)V

    return-object v0
.end method

.method public static provideProxyOfflineListener(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule;->provideProxyOfflineListener()Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;->module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;->provideProxyOfflineListener(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;->get()Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    move-result-object v0

    return-object v0
.end method

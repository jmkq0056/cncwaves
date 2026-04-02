.class public final Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;
.super Ljava/lang/Object;
.source "ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;->headerInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHttpClientConfigurator$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;->provideHttpClientConfigurator$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;->headerInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;->provideHttpClientConfigurator$sdkmanager_publish(Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;)Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;->get()Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    move-result-object v0

    return-object v0
.end method

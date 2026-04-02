.class public final Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;
.super Ljava/lang/Object;
.source "ApplicationInfoModule_ProvideUserAgentProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;-><init>(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUserAgentProvider(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)Lcom/stripe/jvmcore/environment/UserAgentProvider;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;->provideUserAgentProvider(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)Lcom/stripe/jvmcore/environment/UserAgentProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/environment/UserAgentProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/environment/UserAgentProvider;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->provideUserAgentProvider(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)Lcom/stripe/jvmcore/environment/UserAgentProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->get()Lcom/stripe/jvmcore/environment/UserAgentProvider;

    move-result-object v0

    return-object v0
.end method

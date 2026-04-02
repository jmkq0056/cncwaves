.class public final Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;
.super Ljava/lang/Object;
.source "ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

.field private final sdkApplicationInformationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    .line 39
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->sdkApplicationInformationFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;-><init>(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideApplicationInformationProvider$sdkmanager_publish(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ldagger/Lazy;)Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;)",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;->provideApplicationInformationProvider$sdkmanager_publish(Ldagger/Lazy;)Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->sdkApplicationInformationFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->provideApplicationInformationProvider$sdkmanager_publish(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ldagger/Lazy;)Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->get()Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    move-result-object v0

    return-object v0
.end method

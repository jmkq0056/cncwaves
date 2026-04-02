.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;
.super Ljava/lang/Object;
.source "BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final bbposReaderInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final debugLogsShouldBeSentToSplunkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->configurationListenerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->bbposReaderInfoFactoryProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->debugLogsShouldBeSentToSplunkProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposControllerListenerFactory(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;->provideBbposControllerListenerFactory(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->readerStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/status/ReaderStatusListener;

    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->configurationListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/hardware/emv/ConfigurationListener;

    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->bbposReaderInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->debugLogsShouldBeSentToSplunkProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->provideBbposControllerListenerFactory(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->get()Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;

    move-result-object v0

    return-object v0
.end method

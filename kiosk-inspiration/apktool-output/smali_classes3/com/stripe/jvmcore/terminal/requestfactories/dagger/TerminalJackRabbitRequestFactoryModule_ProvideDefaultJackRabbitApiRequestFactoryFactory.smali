.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityJackRabbitApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final activateApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveryApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentIntentApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDisplayApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final refundApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final setupIntentApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->activateApiFactoryProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->discoveryApiFactoryProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->readerDisplayApiFactoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->accessibilityJackRabbitApiFactoryProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->paymentIntentApiFactoryProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->setupIntentApiFactoryProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->refundApiFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultJackRabbitApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;
    .locals 8

    .line 90
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->provideDefaultJackRabbitApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->activateApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->discoveryApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->readerDisplayApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->accessibilityJackRabbitApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->paymentIntentApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->setupIntentApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->refundApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->provideDefaultJackRabbitApiRequestFactory(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;

    move-result-object v0

    return-object v0
.end method

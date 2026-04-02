.class public final Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final localeManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/locale/LocaleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/locale/LocaleManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->module:Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->localeManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/locale/LocaleManager;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesPaymentCollectionLocaleManager(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/core/locale/LocaleManager;)Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;->providesPaymentCollectionLocaleManager(Lcom/stripe/core/locale/LocaleManager;)Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->module:Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->localeManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/locale/LocaleManager;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->providesPaymentCollectionLocaleManager(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/core/locale/LocaleManager;)Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    move-result-object v0

    return-object v0
.end method

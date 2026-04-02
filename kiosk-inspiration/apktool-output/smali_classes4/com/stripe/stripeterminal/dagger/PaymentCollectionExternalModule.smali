.class public final Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;
.super Ljava/lang/Object;
.source "PaymentCollectionExternalModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;",
        "",
        "()V",
        "providesPaymentCollectionLocaleManager",
        "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
        "localeManager",
        "Lcom/stripe/core/locale/LocaleManager;",
        "providesPaymentCollectionSettingsRepository",
        "Lcom/stripe/paymentcollection/SettingsRepository;",
        "coreSettingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "providesPaymentCollectionTransactionRepository",
        "Lcom/stripe/paymentcollection/TransactionRepository;",
        "coreTransactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesPaymentCollectionLocaleManager(Lcom/stripe/core/locale/LocaleManager;)Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "localeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionLocaleManager$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionLocaleManager$1;-><init>(Lcom/stripe/core/locale/LocaleManager;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    return-object v0
.end method

.method public final providesPaymentCollectionSettingsRepository(Lcom/stripe/core/transaction/SettingsRepository;)Lcom/stripe/paymentcollection/SettingsRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "coreSettingsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;-><init>(Lcom/stripe/core/transaction/SettingsRepository;)V

    check-cast v0, Lcom/stripe/paymentcollection/SettingsRepository;

    return-object v0
.end method

.method public final providesPaymentCollectionTransactionRepository(Lcom/stripe/core/transaction/TransactionRepository;)Lcom/stripe/paymentcollection/TransactionRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "coreTransactionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;-><init>(Lcom/stripe/core/transaction/TransactionRepository;)V

    check-cast v0, Lcom/stripe/paymentcollection/TransactionRepository;

    return-object v0
.end method

.class public final Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;
.super Ljava/lang/Object;
.source "DefaultPaymentCollectionFeatureFlagRepository.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;",
        "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
        "readerFeatureFlags",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)V",
        "applicationSelectionInQuickChipEnabled",
        "",
        "ktlvDiscrepancyReportingEnabled",
        "ktlvEnabled",
        "magStripePinEnabled",
        "motoTransactionsEnabled",
        "newIncrementalAuthUiEnabled",
        "predipDisabled",
        "sposGirocardEnabled",
        "transactionLogEnabled",
        "impl_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final readerFeatureFlags:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ")V"
        }
    .end annotation

    const-string v0, "readerFeatureFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPrefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    .line 9
    iput-object p2, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    return-void
.end method


# virtual methods
.method public applicationSelectionInQuickChipEnabled()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    return v0
.end method

.method public ktlvDiscrepancyReportingEnabled()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    return v0
.end method

.method public ktlvEnabled()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    return v0
.end method

.method public magStripePinEnabled()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    return v0
.end method

.method public motoTransactionsEnabled()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    return v0
.end method

.method public newIncrementalAuthUiEnabled()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    return v0
.end method

.method public predipDisabled()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    return v0
.end method

.method public sposGirocardEnabled()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->readerFeatureFlags:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    return v0
.end method

.method public transactionLogEnabled()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;->sharedPrefs:Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getTransactionLogEnabled()Z

    move-result v0

    return v0
.end method

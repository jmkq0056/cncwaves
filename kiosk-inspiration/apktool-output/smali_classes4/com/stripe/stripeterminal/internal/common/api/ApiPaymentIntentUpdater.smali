.class public final Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;
.super Ljava/lang/Object;
.source "ApiPaymentIntentUpdater.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "apiRequestFactory",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V",
        "connectedReader",
        "Lkotlin/Function0;",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lkotlin/jvm/functions/Function0;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V",
        "invoke",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "collectiblePayment",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "requestDynamicCurrencyConversion",
        "",
        "common_publish"
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
.field private final apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

.field private final apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

.field private final connectedReader:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiRequestFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater$1;

    invoke-direct {v0, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater$1;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 27
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;-><init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lkotlin/jvm/functions/Function0;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lkotlin/jvm/functions/Function0;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectedReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiRequestFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 17
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->connectedReader:Lkotlin/jvm/functions/Function0;

    .line 18
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 19
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 6

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object p2

    .line 41
    instance-of v1, p2, Lcom/stripe/transaction/payment/ManualEntryPayment;

    if-eqz v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 44
    check-cast p2, Lcom/stripe/transaction/payment/ManualEntryPayment;

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->updateManualEntryPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p2

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 48
    :cond_0
    instance-of v1, p2, Lcom/stripe/transaction/payment/NonCardPayment;

    if-eqz v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 51
    check-cast p2, Lcom/stripe/transaction/payment/NonCardPayment;

    .line 52
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->updateNonCardPaymentMethodPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/NonCardPayment;Lcom/stripe/currency/Amount;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 61
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 62
    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    .line 63
    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object p3

    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->updatePaymentIntentExpandedMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 68
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->connectedReader:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/Reader;

    .line 69
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {p2}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 71
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {p2}, Lcom/stripe/core/transaction/TransactionRepository;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v5

    move-object v1, p1

    move v4, p3

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->updatePaymentIntentExpandMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

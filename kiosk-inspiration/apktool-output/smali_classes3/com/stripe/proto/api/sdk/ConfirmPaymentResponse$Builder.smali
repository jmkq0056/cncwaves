.class public final Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmPaymentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0012\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017J\u0012\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
        "()V",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "confirmed_payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "declined_charge",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "options",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;",
        "processed_charge",
        "Lcom/stripe/proto/model/sdk/ProcessedCharge;",
        "request_id",
        "",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "build",
        "internal_release"
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
.field public confirm_error:Lcom/stripe/proto/model/sdk/Error;

.field public confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

.field public decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

.field public declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

.field public offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

.field public offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

.field public options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

.field public processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

.field public request_id:Ljava/lang/String;

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->request_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
    .locals 13

    .line 369
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    .line 370
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 371
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->request_id:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 373
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 374
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 375
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    .line 376
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    .line 377
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 378
    iget-object v9, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 379
    iget-object v10, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 380
    iget-object v11, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 381
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 369
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V

    return-object v0
.end method

.method public final confirm_error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 365
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final confirmed_payment_intent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 p1, 0x0

    .line 344
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 345
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final decline_response(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final declined_charge(Lcom/stripe/proto/model/sdk/DeclinedCharge;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "declined_charge is deprecated"
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    return-object p0
.end method

.method public final offline_behavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    return-object p0
.end method

.method public final offline_stats(Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object p0
.end method

.method public final options(Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    return-object p0
.end method

.method public final processed_charge(Lcom/stripe/proto/model/sdk/ProcessedCharge;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "processed_charge is deprecated"
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    return-object p0
.end method

.method public final request_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 1

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method

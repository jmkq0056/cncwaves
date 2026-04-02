.class public final Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "QuerySetupIntentPaymentMethodResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
        "()V",
        "num_of_canceled_payments",
        "",
        "payment_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "payment_status",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;",
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
.field public num_of_canceled_payments:I

.field public payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

.field public payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->build()Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;
    .locals 5

    .line 158
    new-instance v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 160
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    .line 161
    iget v3, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->num_of_canceled_payments:I

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 158
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;ILokio/ByteString;)V

    return-object v0
.end method

.method public final num_of_canceled_payments(I)Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;
    .locals 0

    .line 136
    iput p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->num_of_canceled_payments:I

    return-object p0
.end method

.method public final payment_method(Lcom/stripe/proto/model/sdk/PaymentMethod;)Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    return-object p0
.end method

.method public final payment_status(Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;)Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object p0
.end method

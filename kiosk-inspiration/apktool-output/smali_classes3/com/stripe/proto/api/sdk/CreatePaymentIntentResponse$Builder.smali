.class public final Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreatePaymentIntentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;",
        "()V",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "options",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
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
.field public decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

.field public error:Lcom/stripe/proto/model/sdk/Error;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

.field public options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

.field public payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->build()Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;
    .locals 7

    .line 202
    new-instance v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 204
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 205
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 206
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    .line 207
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 208
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lokio/ByteString;)V

    return-object v0
.end method

.method public final decline_response(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    return-object p0
.end method

.method public final options(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    return-object p0
.end method

.method public final payment_intent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

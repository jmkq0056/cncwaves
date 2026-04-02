.class public final Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "QueryPaymentIntentNextActionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;",
        "()V",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "handle_next_actions_status",
        "Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;",
        "next_actions_error",
        "Lcom/stripe/proto/model/sdk/Error;",
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

.field public handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

.field public next_actions_error:Lcom/stripe/proto/model/sdk/Error;

.field public payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->build()Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;
    .locals 6

    .line 192
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;

    .line 193
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 194
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    .line 195
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 196
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    .line 197
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public final decline_response(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final handle_next_actions_status(Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final next_actions_error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final payment_intent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->handle_next_actions_status:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 158
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$Builder;->next_actions_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

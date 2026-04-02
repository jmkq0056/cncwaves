.class public final Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmPaymentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "()V",
        "amount_surcharge",
        "",
        "Ljava/lang/Long;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "options",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;",
        "payment_intent_id",
        "",
        "payment_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "return_url",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;",
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
.field public amount_surcharge:Ljava/lang/Long;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

.field public options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

.field public payment_intent_id:Ljava/lang/String;

.field public payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

.field public return_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final amount_surcharge(Ljava/lang/Long;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
    .locals 8

    .line 203
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 206
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 207
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 208
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 209
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->return_url:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 203
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    return-object p0
.end method

.method public final options(Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Lcom/stripe/proto/model/sdk/PaymentMethod;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method

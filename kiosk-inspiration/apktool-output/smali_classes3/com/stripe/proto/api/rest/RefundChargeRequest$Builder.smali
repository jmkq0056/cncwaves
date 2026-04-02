.class public final Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RefundChargeRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RefundChargeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008J\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0015J\u0015\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0015R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "charge",
        "",
        "metadata",
        "",
        "payment_intent",
        "payment_method_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "reason",
        "refund_application_fee",
        "",
        "Ljava/lang/Boolean;",
        "reverse_transfer",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
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
.field public amount:Ljava/lang/Long;

.field public charge:Ljava/lang/String;

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public payment_intent:Ljava/lang/String;

.field public payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

.field public reason:Ljava/lang/String;

.field public refund_application_fee:Ljava/lang/Boolean;

.field public reverse_transfer:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 218
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->build()Lcom/stripe/proto/api/rest/RefundChargeRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/RefundChargeRequest;
    .locals 10

    .line 290
    new-instance v0, Lcom/stripe/proto/api/rest/RefundChargeRequest;

    .line 291
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->reason:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->refund_application_fee:Ljava/lang/Boolean;

    .line 293
    iget-object v3, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->reverse_transfer:Ljava/lang/Boolean;

    .line 294
    iget-object v4, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 295
    iget-object v5, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->amount:Ljava/lang/Long;

    .line 296
    iget-object v6, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->metadata:Ljava/util/Map;

    .line 297
    iget-object v7, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->charge:Ljava/lang/String;

    .line 298
    iget-object v8, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->payment_intent:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 290
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/rest/RefundChargeRequest;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final charge(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->charge:Ljava/lang/String;

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->payment_intent:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_intent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->payment_intent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->charge:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_data(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object p0
.end method

.method public final reason(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final refund_application_fee(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->refund_application_fee:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final reverse_transfer(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;->reverse_transfer:Ljava/lang/Boolean;

    return-object p0
.end method

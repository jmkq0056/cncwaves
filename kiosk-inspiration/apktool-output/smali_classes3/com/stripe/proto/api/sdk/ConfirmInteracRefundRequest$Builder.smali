.class public final Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmInteracRefundRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;",
        "()V",
        "charge_id",
        "",
        "interac_payment_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "metadata",
        "",
        "payment_id",
        "reason",
        "refund_application_fee",
        "",
        "reverse_transfer",
        "stripe_account_id",
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
.field public charge_id:Ljava/lang/String;

.field public interac_payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

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

.field public payment_id:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public refund_application_fee:Z

.field public reverse_transfer:Z

.field public stripe_account_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->reason:Ljava/lang/String;

    .line 219
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;
    .locals 10

    .line 294
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;

    .line 295
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->reason:Ljava/lang/String;

    .line 296
    iget-boolean v2, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->refund_application_fee:Z

    .line 297
    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->reverse_transfer:Z

    .line 298
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->interac_payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 299
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->metadata:Ljava/util/Map;

    .line 300
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->stripe_account_id:Ljava/lang/String;

    .line 301
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->charge_id:Ljava/lang/String;

    .line 302
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->payment_id:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 294
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/model/sdk/PaymentMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final charge_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->charge_id:Ljava/lang/String;

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->payment_id:Ljava/lang/String;

    return-object p0
.end method

.method public final interac_payment_method(Lcom/stripe/proto/model/sdk/PaymentMethod;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->interac_payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->payment_id:Ljava/lang/String;

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->charge_id:Ljava/lang/String;

    return-object p0
.end method

.method public final reason(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final refund_application_fee(Z)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->refund_application_fee:Z

    return-object p0
.end method

.method public final reverse_transfer(Z)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->reverse_transfer:Z

    return-object p0
.end method

.method public final stripe_account_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest$Builder;->stripe_account_id:Ljava/lang/String;

    return-object p0
.end method

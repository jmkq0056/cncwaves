.class public final Lcom/stripe/proto/model/rest/Refund$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Refund.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Refund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Refund;",
        "Lcom/stripe/proto/model/rest/Refund$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Refund$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Refund;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "charge",
        "",
        "created",
        "currency",
        "failure_reason",
        "id",
        "metadata",
        "",
        "payment_method_details",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "reason",
        "status",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Refund$Builder;",
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
.field public amount:Ljava/lang/Long;

.field public charge:Ljava/lang/String;

.field public created:Ljava/lang/Long;

.field public currency:Ljava/lang/String;

.field public failure_reason:Ljava/lang/String;

.field public id:Ljava/lang/String;

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

.field public payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

.field public reason:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 239
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Refund$Builder;->build()Lcom/stripe/proto/model/rest/Refund;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Refund;
    .locals 12

    .line 333
    new-instance v0, Lcom/stripe/proto/model/rest/Refund;

    .line 334
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->id:Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->amount:Ljava/lang/Long;

    .line 336
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->charge:Ljava/lang/String;

    .line 337
    iget-object v4, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->created:Ljava/lang/Long;

    .line 338
    iget-object v5, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->currency:Ljava/lang/String;

    .line 339
    iget-object v6, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->metadata:Ljava/util/Map;

    .line 340
    iget-object v7, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->reason:Ljava/lang/String;

    .line 341
    iget-object v8, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->status:Ljava/lang/String;

    .line 342
    iget-object v9, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    .line 343
    iget-object v10, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->failure_reason:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Refund$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 333
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/rest/Refund;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final charge(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->charge:Ljava/lang/String;

    return-object p0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_reason(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->failure_reason:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/Refund$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_method_details(Lcom/stripe/proto/model/rest/PaymentMethodDetails;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    return-object p0
.end method

.method public final reason(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Refund$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Refund$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

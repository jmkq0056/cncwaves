.class public final Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreatePaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001bJ\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tJ\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0014\u0010\u0012\u001a\u00020\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Long;",
        "application_fee_amount",
        "capture_method",
        "",
        "currency",
        "customer",
        "description",
        "metadata",
        "",
        "on_behalf_of",
        "payment_method_options",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
        "payment_method_types",
        "",
        "receipt_email",
        "setup_future_usage",
        "statement_descriptor",
        "statement_descriptor_suffix",
        "transfer_data",
        "Lcom/stripe/proto/api/rest/TransferData;",
        "transfer_group",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;",
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

.field public application_fee_amount:Ljava/lang/Long;

.field public capture_method:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public customer:Ljava/lang/String;

.field public description:Ljava/lang/String;

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

.field public on_behalf_of:Ljava/lang/String;

.field public payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

.field public payment_method_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public receipt_email:Ljava/lang/String;

.field public setup_future_usage:Ljava/lang/String;

.field public statement_descriptor:Ljava/lang/String;

.field public statement_descriptor_suffix:Ljava/lang/String;

.field public transfer_data:Lcom/stripe/proto/api/rest/TransferData;

.field public transfer_group:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 340
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->metadata:Ljava/util/Map;

    .line 343
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final application_fee_amount(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->application_fee_amount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->build()Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 20

    move-object/from16 v0, p0

    .line 501
    new-instance v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    .line 502
    iget-object v2, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->amount:Ljava/lang/Long;

    .line 503
    iget-object v3, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->capture_method:Ljava/lang/String;

    .line 504
    iget-object v4, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->currency:Ljava/lang/String;

    .line 505
    iget-object v5, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->description:Ljava/lang/String;

    .line 506
    iget-object v6, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->metadata:Ljava/util/Map;

    .line 507
    iget-object v7, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 508
    iget-object v8, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->receipt_email:Ljava/lang/String;

    .line 509
    iget-object v9, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->statement_descriptor:Ljava/lang/String;

    .line 510
    iget-object v10, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->customer:Ljava/lang/String;

    .line 511
    iget-object v11, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->transfer_group:Ljava/lang/String;

    .line 512
    iget-object v12, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->application_fee_amount:Ljava/lang/Long;

    .line 513
    iget-object v13, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->on_behalf_of:Ljava/lang/String;

    .line 514
    iget-object v14, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    .line 515
    iget-object v15, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-object/from16 v16, v1

    .line 516
    iget-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 517
    iget-object v1, v0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->setup_future_usage:Ljava/lang/String;

    .line 518
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    .line 501
    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final capture_method(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->capture_method:Ljava/lang/String;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final on_behalf_of(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->on_behalf_of:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_options(Lcom/stripe/proto/api/rest/PaymentMethodOptions;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_options:Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 420
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final receipt_email(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->receipt_email:Ljava/lang/String;

    return-object p0
.end method

.method public final setup_future_usage(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->setup_future_usage:Ljava/lang/String;

    return-object p0
.end method

.method public final statement_descriptor(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->statement_descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public final statement_descriptor_suffix(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->statement_descriptor_suffix:Ljava/lang/String;

    return-object p0
.end method

.method public final transfer_data(Lcom/stripe/proto/api/rest/TransferData;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->transfer_data:Lcom/stripe/proto/api/rest/TransferData;

    return-object p0
.end method

.method public final transfer_group(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest$Builder;->transfer_group:Ljava/lang/String;

    return-object p0
.end method

.class public final Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethodOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;",
        "()V",
        "dynamic_currency_conversion",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;",
        "request_dynamic_currency_conversion",
        "",
        "request_extended_authorization",
        "",
        "Ljava/lang/Boolean;",
        "request_incremental_authorization_support",
        "request_partial_authorization",
        "routing",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;",
        "surcharge",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;",
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
.field public dynamic_currency_conversion:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

.field public request_dynamic_currency_conversion:Ljava/lang/String;

.field public request_extended_authorization:Ljava/lang/Boolean;

.field public request_incremental_authorization_support:Ljava/lang/Boolean;

.field public request_partial_authorization:Ljava/lang/String;

.field public routing:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

.field public surcharge:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->build()Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;
    .locals 9

    .line 536
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;

    .line 537
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->routing:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    .line 538
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_dynamic_currency_conversion:Ljava/lang/String;

    .line 539
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    .line 540
    iget-object v4, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_extended_authorization:Ljava/lang/Boolean;

    .line 541
    iget-object v5, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 542
    iget-object v6, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->surcharge:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;

    .line 543
    iget-object v7, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_partial_authorization:Ljava/lang/String;

    .line 544
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 536
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;-><init>(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final dynamic_currency_conversion(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;

    return-object p0
.end method

.method public final request_dynamic_currency_conversion(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_dynamic_currency_conversion:Ljava/lang/String;

    return-object p0
.end method

.method public final request_extended_authorization(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_extended_authorization:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final request_incremental_authorization_support(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final request_partial_authorization(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->request_partial_authorization:Ljava/lang/String;

    return-object p0
.end method

.method public final routing(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->routing:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;

    return-object p0
.end method

.method public final surcharge(Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Builder;->surcharge:Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;

    return-object p0
.end method
